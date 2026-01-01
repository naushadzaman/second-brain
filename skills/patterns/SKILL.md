---
name: patterns
description: Surface hidden themes, contradictions, and leverage points in your thinking. Use with "/patterns" or "/patterns 90" for different timeframes.
---

# Patterns

Reveal the structure beneath your captures—what you're thinking about that you haven't consciously named.

## Invocation

```
/patterns                 # Last 30 days
/patterns 7               # Last 7 days (recent focus)
/patterns 90              # Last 90 days (broader view)
```

## Hard Rules

1. **Every theme MUST cite 3+ resources** — With actual quotes
2. **Contradictions must show both sides** — Quote the conflict
3. **Counts must be actual** — Verify, don't estimate
4. **Distinguish capture from belief** — "You saved this" ≠ "You believe this"

## The Process

### Step 1: Scan Vault

1. **Resources** — `03-resources/` within timeframe
2. **Completed todos** — `01-todos/done.md`
3. **Inbox** — What are you currently capturing?
4. **Frameworks** — What's in your life-map, vivid-vision?

### Step 2: Find Patterns

- Topics appearing in 3+ resources
- Repeated problems across sources
- Contradictions (resources that disagree)
- High-leverage insights

### Step 3: Generate Output

**Save to:** `05-reviews/weekly/patterns-YYYY-MM-DD.md`

```markdown
---
tags: [patterns]
created: YYYY-MM-DD
timeframe: N days
---

# Patterns: [Date Range]

## Scan Summary

| Metric | Count |
|--------|-------|
| Resources analyzed | N |
| Todos completed | N |

---

## Recurring Themes (5-8)

### 1. [Theme Name] `Strong`

**Frequency:** Appeared in N resources

**Evidence:**
- [[Resource 1]]: "[specific quote]"
- [[Resource 2]]: "[specific quote]"
- [[Resource 3]]: "[specific quote]"

**Your engagement:** [Project? Todos? Or just capturing?]

---

### 2. [Theme Name] `Moderate`
...

### 6. [Theme Name] `Emerging`

**Note:** Only 2 sources—may strengthen or fade.

---

## Contradictions Detected

### [Topic]

**Position A:** [[Resource A]]
> "[Quote supporting A]"

**Position B:** [[Resource B]]
> "[Quote supporting B]"

**Implication:** [Worth resolving?]

---

## Big Levers

### [Lever Name]

**The insight:** "[Quote or synthesis]"

**If you acted on this, it would impact:**
- [Goal/Project 1]
- [Goal/Project 2]

---

## Hidden Structure

### Attention Gaps
- You have **N resources** about [Topic] but **no goal** for it

### Capture vs Action
| Topic | Resources | Completed Todos |
|-------|-----------|-----------------|
| [Topic 1] | N | M |

---

*Analysis from [N] resources over [timeframe]*
```

## Pattern Strength

| Strength | Criteria |
|----------|----------|
| `Strong` | 5+ resources, clear theme |
| `Moderate` | 3-4 resources |
| `Emerging` | 2 resources—may not persist |

## What Good Patterns Reveal

- Topics you care about but haven't named
- Contradictions in your thinking
- Where capture > action (or vice versa)
- Leverage points for change
