# Second Brain

> Your AI-augmented knowledge system. Capture, process, surface insights.

---

## Quick Reference

| I want to... | Do this |
|--------------|---------|
| Save something to read later | Drop link in `00-inbox/` |
| Capture a quick thought | Add to `01-todos/inbox.md` |
| Process my inbox | Run `/digest` |
| Get weekly insights | Run `/review` |
| Generate action ideas | Run `/ideas` |
| Find patterns in my thinking | Run `/patterns` |

---

## Folder Structure

```
second-brain/
├── 00-inbox/        → Drop links, notes, ideas here
├── 01-todos/        → inbox.md → active.md → done.md
├── 02-projects/     → Project-specific context
├── 03-resources/    → Processed knowledge (searchable)
└── 05-reviews/      → Weekly reviews
```

---

## Daily Workflow

### Throughout Day
- Drop interesting links → `00-inbox/`
- Quick todos → `01-todos/inbox.md`

### Evening (Optional)
- Run `/digest` to process inbox
- Or let automation handle it

---

## Weekly Workflow

**Saturday or Sunday:**
1. Run `/review` to generate insights
2. Move completed todos to `01-todos/done.md`

---

## Skills

| Command | Purpose | When to Use |
|---------|---------|-------------|
| `/digest` | Process inbox into resources | Daily or when inbox has items |
| `/review` | Weekly synthesis with themes | Saturday/Sunday |
| `/ideas` | Generate action opportunities | When you need inspiration |
| `/patterns` | Find hidden themes | Monthly or quarterly |

---

## Tags

### Status
- `#to-process` — Needs attention
- `#processed` — Done, searchable

### Priority
- `#urgent` — This week
- `#important` — This month
- `#someday` — Future

---

## Philosophy

This system is designed to be:
- **Calm** — No productivity theater
- **Plain text** — Works forever
- **AI-first** — Claude does the heavy lifting
