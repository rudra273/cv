---
name: resume-builder
description: >
  Build or rewrite a resume as clean, ATS-friendly Markdown. Use this skill whenever
  the user asks to create a resume, write a CV, update their resume, improve their resume,
  rewrite resume content, or format work experience into a resume. Trigger even for casual
  phrasings like "help me redo my resume", "make a resume from my experience", or "my resume
  needs work". Also trigger when the user pastes raw career info and wants it shaped into a
  resume. Output is always structured Markdown — clean, readable, single-column, no tables
  or complex formatting.
---

# Resume Builder

Produce clean, ATS-friendly resumes as Markdown. Two entry points:

1. **From scratch** — interview the user to gather all necessary info, then generate the resume.
2. **From existing content** — user provides a resume or raw career notes; rewrite, restructure, and improve it.

---

## Detecting the flow

- If the user provides existing resume text, job history, or a LinkedIn dump → **Rewrite flow**
- If they say "build me a resume" or describe themselves without providing a document → **From scratch flow**
- If unclear, ask: "Do you have an existing resume or notes I can work from, or should we build from scratch?"

---

## From Scratch Flow

Interview the user with focused questions. Don't dump all questions at once — ask in logical batches:

**Batch 1 — Identity & target:**
- Full name, location (city, state/country), email, phone, LinkedIn/GitHub/portfolio (if any)
- What role or job title are they targeting? Any specific industry?

**Batch 2 — Work experience:**
- For each role: company, title, dates (Month Year – Month Year or "Present"), and key responsibilities/achievements
- Prompt for metrics: "Can you quantify any of these? e.g., reduced X by Y%, grew team from N to M, shipped in Z weeks"

**Batch 3 — Education & skills:**
- Degree, institution, graduation year
- Key technical skills, tools, languages, frameworks
- Certifications, if any

**Batch 4 — Extras (only if relevant):**
- Projects (especially for engineers, designers, or recent grads)
- Publications, awards, or notable open-source contributions

Once you have enough to write a full resume, stop asking and generate it. Don't ask for information that isn't clearly useful.

---

## Rewrite Flow

When the user gives existing content:

1. **Parse what's there** — extract all sections, even if messy or incomplete.
2. **Identify gaps** — missing dates, vague bullet points, missing metrics, no skills section, etc.
3. **Ask only what's missing** — one focused question for the most critical gaps. Don't pepper them with questions.
4. **Rewrite** — tighten language, quantify where possible, restructure into the standard template below.

Common rewrite improvements to make automatically:
- Passive → active voice ("was responsible for" → "Led")
- Vague → specific ("worked on projects" → "Built X that achieved Y")
- Paragraphs → tight bullet points
- Normalize date formats
- Add summary if missing and role is senior

---

## Output Format

Always output a complete Markdown resume using this exact structure:

```
# Full Name
City, State | email@example.com | +91-XXXXXXXXXX | [LinkedIn](url) | [GitHub](url)

---

## Summary
2–3 sentence professional summary. Tailor to the target role. Skip for entry-level if they have no clear target.

---

## Experience

### Job Title — Company Name
*Month Year – Month Year (or Present)* | City, State (or Remote)

- Bullet point starting with strong action verb
- Quantify outcomes wherever possible (%, $, scale, time saved)
- Focus on impact, not just task list
- 3–5 bullets per role; fewer for older or shorter roles

### Job Title — Company Name
*Month Year – Month Year*

- ...

---

## Education

### Degree, Major — Institution Name
*Graduation Year* | City, State

---

## Skills

**Category:** Skill 1, Skill 2, Skill 3
**Category:** ...

---

## Projects *(include only if relevant or user is early-career)*

### Project Name
*Tech stack or context*
- What it does and why it matters

---

## Certifications *(include only if present)*

- Cert Name — Issuing Body, Year
```

---

## Writing Rules

**Language:**
- Every bullet starts with a strong past-tense action verb (Built, Led, Reduced, Shipped, Designed, Automated, Scaled, Owned, Architected, Migrated, etc.)
- Present tense only for current roles
- No "I", no "my", no "we"
- No filler phrases: "responsible for", "helped with", "worked on", "involved in"
- Be specific. Generic bullets are worse than no bullets.

**ATS Rules:**
- No tables, no columns, no icons, no emojis
- Standard section headers (Experience, Education, Skills — not creative alternatives)
- Spell out acronyms at least once if they're non-universal
- Keywords from the target job description should appear naturally — don't stuff them

**Length:**
- 1 page for < 5 years experience → aim for tight bullets, cut older or irrelevant roles
- 2 pages acceptable for 7+ years or highly technical roles
- In Markdown, signal page breaks with a horizontal rule `---` between major sections if the user needs page guidance

**Sections to always include:** Name/contact, Experience, Education, Skills
**Sections to include only if they add value:** Summary, Projects, Certifications, Awards

---

## Tone for interaction

Be direct and efficient. Don't over-explain. If you can infer something (e.g., location from context, or that someone building ML pipelines knows Python), don't ask about it. Ask the minimum to produce a complete, accurate resume.

After generating, offer:
- "Want me to tailor this for a specific job description?"
- "Should I adjust the tone or emphasis for any section?"

Don't offer to convert to .docx or other formats unless the user asks — output is Markdown only.