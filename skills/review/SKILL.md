---
name: review
description: Generate weekly review with themes, insights, and next actions. Use with "/review" for current week or "/review last" for previous week.
---

# Weekly Review

A 5-minute read that makes you feel caught up and clear on what matters.

## Invocation

```
/review                   # Current week (last 7 days)
/review last              # Previous week
```

## The Process

### Step 1: Gather Activity

**Scan the vault:**

1. **New resources** — `03-resources/` created this week
2. **Completed todos** — `01-todos/done.md` from this week
3. **Active todos** — `01-todos/active.md` open items
4. **Inbox status** — `00-inbox/` files waiting
5. **Framework check** — When was `04-frameworks/life-map.md` last updated?

### Step 2: Analyze

- What topics appeared in multiple resources?
- What got done vs. what's stalled?
- Where did attention actually go?

### Step 3: Generate Output

**Save to:** `05-reviews/weekly/YYYY-MM-DD.md`

```markdown
---
tags: [review, weekly]
created: YYYY-MM-DD
---

# Weekly Review: [Date Range]

## At a Glance

| Metric | Count |
|--------|-------|
| Resources added | N |
| Todos completed | N |
| Active todos | N |
| Inbox waiting | N |

---

## Themes This Week (3-5)

### 1. [Theme Name]

You spent attention on **[Theme]** this week.

**Evidence:**
- Added: [[Resource 1]], [[Resource 2]]
- Completed: "[Todo 1]"

**So what:** [One sentence insight]

---

## Top Insights

### 1. [Insight]
**From:** [[Resource]]
> "[Quote]"

**Why keep:** [One sentence]

---

## Unfinished Loops

| Item | Days | Status |
|------|------|--------|
| [Todo/Decision] | N | Blocked / Stalled / Needs decision |

---

## Next Week

### Must Do
1. - [ ] [Action] — *Because: [reason from review]*
2. - [ ] [Action] — *Because: [reason]*

### Could Do
3. - [ ] [Action]
4. - [ ] [Action]

---

## Life Map Check

Quick pulse on domains (1-10):

| Domain | Score |
|--------|-------|
| Career | |
| Relationships | |
| Health | |
| Meaning | |
| Finances | |
| Fun | |

---

*Generated from vault activity*
```

## Quality Standards

The review must:
- Be scannable in 5 minutes
- Surface uncomfortable truths (stalled items)
- Have concrete next actions
- Be worth re-reading later
