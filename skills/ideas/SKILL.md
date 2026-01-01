---
name: ideas
description: Generate actionable ideas from your knowledge. Finds connections between resources and surfaces opportunities. Use with "/ideas" or "/ideas focus:topic".
---

# Ideas

Transform accumulated knowledge into executable opportunities.

## Invocation

```
/ideas                    # Last 7 days
/ideas 30                 # Last 30 days
/ideas focus:career       # Focus on specific topic
```

## Hard Rules

1. **Every idea MUST cite specific resources** — No idea without a source
2. **First action must be concrete** — Verb + noun, not "think about"
3. **Reject generic ideas** — If it could apply to anyone, it's not specific enough
4. **Time-bound** — Focus on "this week", not "someday"

## The Process

### Step 1: Gather Context

1. **Recent resources** — `03-resources/` from timeframe
2. **Active todos** — `01-todos/active.md`
3. **Inbox signals** — What topics are you capturing?
4. **Framework goals** — What did you write in `04-frameworks/`?

### Step 2: Find Collisions

Look for productive intersections:

| Collision | Example |
|-----------|---------|
| Resource + Resource | Two articles with connecting ideas |
| Resource + Goal | Insight that applies to your vision |
| Resource + Problem | Something that solves a stalled todo |

### Step 3: Generate Output

**Save to:** `05-reviews/weekly/ideas-YYYY-MM-DD.md`

```markdown
---
tags: [ideas]
created: YYYY-MM-DD
---

# Ideas: [Date]

## Context Analyzed

| Source | Count |
|--------|-------|
| Resources (last N days) | X |
| Active todos | Y |
| Frameworks checked | life-map, vivid-vision |

---

## Top 5 Opportunities

### 1. [Specific Idea Title]

**One-liner:** [Exactly one sentence]

**Source collision:**
- [[Resource A]]: "[key concept]"
- [[Resource B]] or [Goal]: "[connecting concept]"

**Why now:** [Why is this timely?]

**First action:** `[Verb] [noun] [by when]`

**Effort:** `Quick win` | `Weekend project` | `Multi-week`

---

### 2. [Next Idea]
...

---

## Gaps Noticed

- **No project for:** You have N resources about [topic] but no goal
- **Stalled:** [Todo] hasn't moved; these resources might help

---

*Generated from [N] resources over [timeframe]*
```

## Anti-Generic Filters

**Reject ideas that:**
- Start with "Consider..." or "Explore..."
- Could appear in any productivity blog
- Have vague actions like "research" or "think about"

**Good ideas are:**
- Specific to YOUR resources
- Connected to YOUR goals
- Actionable THIS week
