# Second Brain in a Box

## Purpose

A "Second Brain" system using Claude Code skills for AI-augmented knowledge management.

## Core Concept

Use Claude Code skills to transform content consumption into compounding knowledge:
- `/digest` - Process inbox items into searchable notes
- `/review` - Weekly synthesis of what you've captured
- `/ideas` - Surface connections between knowledge and problems
- `/patterns` - Reveal themes and blind spots in your thinking

## Structure

```
second-brain/
├── CLAUDE.md              ← This file (project context)
├── README.md              ← Setup guide
├── linkedin-post.md       ← Post about the concept
│
├── vault-template/        ← Folder structure to copy
│   ├── CLAUDE.md              ← Instructions for Claude
│   ├── Home.md                ← Main dashboard
│   ├── 00-inbox/              ← Content capture
│   ├── 01-todos/              ← Task management
│   ├── 02-projects/           ← Project context
│   ├── 03-resources/          ← Processed knowledge
│   └── 05-reviews/            ← Weekly reviews
│
├── skills/                ← Skills to install
│   ├── digest/
│   ├── review/
│   ├── ideas/
│   └── patterns/
│
└── scripts/               ← Automation
    ├── install.sh
    ├── digest-inbox
    └── digest-watcher
```

## Technical Notes

**No MCP Required:**
- Skills use WebFetch and WebSearch (built-in Claude tools)
- No social-hydrator or Apify configuration needed
- Some social media content may have limited extraction

**Automation:**
- `digest-watcher` polls inbox every 5 minutes
- Logs to `~/.local/share/second-brain/digest.log`

## Design Principles

1. **Simple setup** - Copy folders, install skills, done
2. **5-minute daily use** - Not productivity theater
3. **Plain text** - No databases, works forever
4. **AI-first** - Skills do the heavy lifting

## What's Included

### Skills (`skills/`)
- `/digest` - Process inbox into searchable notes
- `/review` - Weekly synthesis
- `/ideas` - Surface opportunities
- `/patterns` - Theme detection

### Scripts (`scripts/`)
- `install.sh` - One-command setup
- `digest-inbox` - Process single inbox file
- `digest-watcher` - Automatic polling (every 5 min)

## Usage

```bash
chmod +x scripts/install.sh
./scripts/install.sh ~/Documents/second-brain
```
