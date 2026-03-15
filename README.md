# 🔧 Prompt Enhancer Pack for Claude Code

Stop writing vague prompts. This pack auto-enhances your prompts before Claude responds.

## What It Does

```
You type:     /enhance explain docker
Claude shows: Enhanced, well-structured version of your prompt
You confirm:  yes
Claude:       High-quality detailed response
```

## Install (30 seconds)

**Step 1:** Download and unzip this folder

**Step 2:** Open Terminal and run:
```bash
cd path/to/prompt-enhancer-pack
chmod +x install.sh
./install.sh
```

**Step 3:** Restart Claude Code (quit and reopen)

**Step 4:** Try it:
```
/enhance explain docker
```

## Commands

| Command | Best For | Example |
|---------|----------|---------|
| `/enhance` | Anything | `/enhance explain kubernetes` |
| `/enhance-code` | Coding tasks | `/enhance-code python web scraper` |
| `/enhance-writing` | Writing tasks | `/enhance-writing blog post about AI` |
| `/enhance-for` | Other AIs | `/enhance-for chatgpt explain docker` |

### /enhance — General purpose
Takes any rough prompt and adds specificity, structure, and format preferences.
```
/enhance compare SQL vs NoSQL
/enhance help me with system design interview
```

### /enhance-code — Code focused
Adds language, error handling, testing, edge cases, code style.
```
/enhance-code REST API with auth
/enhance-code fix memory leak in my app
```

### /enhance-writing — Writing focused
Adds audience, tone, structure, length, key themes.
```
/enhance-writing cover letter for Google
/enhance-writing product launch announcement
```

### /enhance-for [platform] — Cross-platform
Optimizes prompt for another AI. Copy-paste the result.
Supported: `chatgpt`, `gemini`, `cursor`, `copilot`, `claude`
```
/enhance-for chatgpt explain microservices
/enhance-for cursor build a login page
```

## After Enhancement

You always get a choice:
- **yes** — Use the enhanced prompt
- **edit: [changes]** — Modify it first
- **skip** — Use your original prompt as-is

## Requirements

- Claude Code 2.x+
- macOS or Linux

## Troubleshooting

**Command not found:** Make sure you restarted Claude Code after installing.

**Still not working:** Verify files exist:
```bash
ls ~/.claude/skills/
```
You should see: `enhance/`, `enhance-code/`, `enhance-writing/`, `enhance-for/`
