# 🔧 Prompt Enhancer Pack for Claude Code

Stop writing vague prompts. This pack auto-enhances your prompts before Claude responds.

![Claude Code](https://img.shields.io/badge/Claude_Code-2.x+-orange)
![Version](https://img.shields.io/badge/version-2.0-blue)

## Demo

![Prompt Enhancer Demo](assets/demo.png)

## What's New in v2.0

- **Context-aware**: Scans your codebase before enhancing — detects tech stack, frameworks, and project patterns
- **Few-shot examples**: Each skill includes before/after examples so Claude knows exactly what "good" looks like
- **Named techniques**: Uses specific methods like specificity injection, anti-patterns, and constraint setting
- **Writing classification**: Automatically categorizes into 6 writing types and applies the right framework
- **Deep platform profiles**: Each AI platform gets genuinely different optimization with detailed examples

## Install (30 seconds)

```bash
git clone https://github.com/SivaJyothiPamarthy/prompt-enhancer-pack.git
cd prompt-enhancer-pack
chmod +x install.sh
./install.sh
```

Then **restart Claude Code**.

## Commands

| Command | Best For | Context-Aware | Example |
|---------|----------|:---:|---------|
| `/enhance` | Anything | ✅ | `/enhance explain kubernetes` |
| `/enhance-code` | Coding tasks | ✅ Detects tech stack | `/enhance-code add authentication` |
| `/enhance-writing` | Writing tasks | ✅ Matches content style | `/enhance-writing blog post about AI` |
| `/enhance-for` | Other AIs | — | `/enhance-for chatgpt explain docker` |

### `/enhance [prompt]` — General purpose

Analyzes your prompt for intent, audience, scope, and gaps. Adds specificity, structure, constraints, and anti-patterns.

```
/enhance explain kubernetes
/enhance compare SQL vs NoSQL
/enhance help me with system design interview prep
```

### `/enhance-code [prompt]` — Code focused (reads your codebase)

Automatically detects your project's tech stack from `package.json`, `requirements.txt`, `Cargo.toml`, etc. References actual files and patterns from your codebase in the enhanced prompt.

```
/enhance-code add authentication        # detects Next.js, suggests NextAuth
/enhance-code add endpoint for users    # detects FastAPI, matches existing router pattern
/enhance-code python web scraper        # no project? falls back to best practices
```

**Example output inside a Next.js project:**
```
ENHANCED CODE PROMPT
─────────────────────────────────────
Project: Next.js 14 + TypeScript + Prisma
─────────────────────────────────────
Add authentication using NextAuth.js (already in package.json).
Implement: sign-in page at /auth/signin with email/password
and Google OAuth, session management using the existing Prisma
adapter, protected API routes using middleware...
```

### `/enhance-writing [prompt]` — Writing focused (classifies type)

Classifies your request into one of 6 categories (technical, business, marketing, creative, academic, personal) and applies the right enhancement framework for each.

```
/enhance-writing cover letter for Google          # → Personal: authenticity, highlights
/enhance-writing blog post about AI trends        # → Marketing: hook, audience, CTA
/enhance-writing API documentation                # → Technical: structure, code examples
/enhance-writing email to client about delay      # → Business: tone, action items
```

### `/enhance-for [platform] [prompt]` — Cross-platform

Each AI responds differently to prompt structures. This rewrites your prompt optimized for a specific platform's strengths. Copy the result and paste it there.

Supported: `chatgpt` · `gemini` · `cursor` · `copilot` · `claude`

```
/enhance-for chatgpt explain microservices
/enhance-for cursor build a login component in React
/enhance-for gemini compare cloud providers
```

| Platform | Optimization Strategy |
|----------|----------------------|
| ChatGPT | Role-based persona, markdown formatting, numbered steps |
| Gemini | Structured sections, tables, comparison frameworks |
| Cursor | File paths, function signatures, project-aware context |
| Copilot | Comment-style, input/output types, inline edge cases |
| Claude | Clear constraints, scope boundaries, anti-patterns |

## How It Works

```
You type:     /enhance explain docker
                    ↓
Claude:       [Scans project context if available]
                    ↓
Claude shows: Enhanced, well-structured prompt
                    ↓
You choose:   yes → proceed | edit → modify | skip → use original
                    ↓
Claude:       High-quality response based on approved prompt
```

## Project Structure

```
prompt-enhancer-pack/
├── README.md
├── CHANGELOG.md
├── install.sh
├── uninstall.sh
├── assets/
│   └── demo.png
└── skills/
    ├── enhance/SKILL.md             → /enhance
    ├── enhance-code/SKILL.md        → /enhance-code
    ├── enhance-writing/SKILL.md     → /enhance-writing
    └── enhance-for/SKILL.md         → /enhance-for
```

## Uninstall

```bash
chmod +x uninstall.sh
./uninstall.sh
```

## Contributing

PRs welcome! To add a new enhancer:

1. Create `skills/your-skill-name/SKILL.md`
2. Add YAML frontmatter with `name` and `description`
3. Add `allowed-tools` if it needs codebase access
4. Include few-shot examples for better results
5. Test it locally, then submit a PR

## Requirements

- Claude Code 2.x+

