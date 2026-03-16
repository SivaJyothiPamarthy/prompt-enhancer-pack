@echo off
echo.
echo 🔧 Installing Prompt Enhancer Pack...
echo.

set "DEST=%USERPROFILE%\.claude\skills"

if not exist "%USERPROFILE%\.claude" (
    echo   ❌ Claude Code config directory not found.
    echo      Please install Claude Code first.
    exit /b 1
)

for %%s in (enhance enhance-code enhance-writing enhance-for) do (
    if not exist "%DEST%\%%s" mkdir "%DEST%\%%s"
    copy /Y "skills\%%s\SKILL.md" "%DEST%\%%s\SKILL.md" >nul
    echo   ✅ /%%s
)

echo.
echo Done! Restart Claude Code, then try:
echo   /enhance explain docker
echo   /enhance-code python web scraper
echo   /enhance-writing blog post about AI
echo   /enhance-for chatgpt explain kubernetes
echo.
