---
tags:
  - dashboard
---

# Second Brain

> Capture everything. Let AI surface the insights.

---

## Quick Actions

| Action | Command |
|--------|---------|
| Process inbox | `/digest` |
| Weekly review | `/review` |
| Generate ideas | `/ideas` |
| Find patterns | `/patterns` |

---

## Inbox

```dataview
TABLE WITHOUT ID
  file.link AS "Item",
  dateformat(file.ctime, "yyyy-MM-dd") AS "Added"
FROM "00-inbox"
WHERE file.name != "CLAUDE"
SORT file.ctime DESC
LIMIT 5
```

---

## Active Focus

```dataview
TASK
FROM "01-todos/active"
WHERE !completed
LIMIT 5
```

---

## Recent Resources

```dataview
TABLE WITHOUT ID
  file.link AS "Resource",
  dateformat(file.mtime, "yyyy-MM-dd") AS "Updated"
FROM "03-resources"
SORT file.mtime DESC
LIMIT 10
```

---

## Daily Rhythm

1. **During day** — Capture to inbox
2. **Evening** — Run `/digest` (or let automation handle it)
3. **Weekly** — Run `/review` for synthesis
