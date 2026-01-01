---
name: digest
description: Process inbox items into structured knowledge notes. Fetches content from URLs, creates searchable resources. Use with "/digest" or "/digest filename.md".
---

# Digest

Transform raw inbox content into structured, searchable knowledge.

## Invocation

```
/digest                     # Process all items in 00-inbox/
/digest article.md          # Process specific file
```

## The Process

### Step 1: Read Inbox

1. Scan `00-inbox/` for files (skip CLAUDE.md)
2. For each file, extract URLs and notes

### Step 2: Fetch Content

**Use WebFetch for all URL types:**

| URL Type | Method | Notes |
|----------|--------|-------|
| Articles/blogs | `WebFetch(url)` | Works for most sites |
| YouTube | `WebFetch(url)` | Gets page content, search for transcript if needed |
| Twitter/X | `WebFetch(url)` | May have limitations, extract what's available |
| Other | `WebFetch(url)` | Best-effort extraction |

**Fallback for limited content:**
- Use `WebSearch` to find summaries, reviews, or discussions
- Note any content that couldn't be fully extracted

**Do NOT use:**
- MCP tools (not configured for this package)
- Social media hydration tools

### Step 3: Determine Source Type

Classify the content:

| source_type | When to use |
|-------------|-------------|
| `article` | Blog posts, news, documentation |
| `video` | YouTube, tutorials |
| `tweet` | Twitter/X posts |
| `book` | Book notes or summaries |
| `idea` | Raw concepts, personal notes |

### Step 4: Create Resource

**Save to:** `03-resources/[Generated Title].md`

```markdown
---
tags:
  - [topic-tag]
  - [source/article or source/video etc]
  - to-process
created: YYYY-MM-DD
source: https://...
source_type: article | video | tweet | book | idea
keywords: [searchable, terms, for, retrieval]
---

# [Generated Title]

## TL;DR

> **[Key insight in bold, one sentence]**
> [Supporting detail if needed]

## The Problem / Context

[Why does this matter? What problem does it address?]

## Key Points

### [Subtopic 1]
- Point with detail
- Another point

### [Subtopic 2]
- Point with detail

## Actionable Takeaways

- [ ] Specific action I could take with this knowledge
- [ ] Experiment or thing to try
- [ ] Person to share with or discuss

*If no clear actions: "Reference material—no immediate actions"*

## Related

- [[potential-link-to-other-resource]]

---

<details>
<summary>Full Content / Raw Text</summary>

> [All extracted text preserved verbatim]
> [Quotes, data, specifics that might be useful later]

</details>
```

### Step 5: Cleanup

1. Delete the processed inbox file
2. Report: title, TL;DR, and file location

## Frontmatter Fields

| Field | Purpose | Example |
|-------|---------|---------|
| `source_type` | Enables queries like `WHERE source_type = "video"` | `article` |
| `keywords` | Searchable terms for future retrieval | `[productivity, habits, morning-routine]` |
| `source/X` tag | Semantic grouping | `#source/article` |

## Processing Rules

1. **Always fetch before synthesizing** — Don't guess content from URL
2. **Create value immediately** — TL;DR should be useful standalone
3. **Preserve sources** — Always cite original URLs
4. **Extract specifics** — Names, numbers, quotes, frameworks
5. **Fail gracefully** — Note limitations, continue processing
6. **Be findable** — Keywords and tags for 6-month retrieval

## Quality Standards

The resource should:
- Be scannable in 30 seconds (TL;DR, clear headings)
- Be deep enough for 10-minute study (full content preserved)
- Stand alone without visiting the URL
- Convert knowledge to action (Actionable Takeaways)
- Be findable in 6 months via search (keywords, source_type)
