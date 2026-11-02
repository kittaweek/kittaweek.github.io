# Devsiam

> Personal brand site of **Kittawee Kongpan (Post)**
> Live at **[kittaweek.github.io](https://kittaweek.github.io)** — built with [VitePress](https://vitepress.dev)

| Path | Purpose |
| --- | --- |
| `kittaweek.github.io/` | Brand site — About, Career, Portfolio, Articles |
| `kittaweek.github.io/th/` | ภาษาไทย |

---

## Project structure

```text
.
├── site/
│   ├── index.md              Home (EN)
│   ├── th/                   TH locale mirror
│   ├── about/                Philosophy / approach
│   ├── career/               Growth journey + certificates
│   ├── portfolio/            Case studies
│   ├── articles/             Essays & notes
│   ├── archive/              Redirect → /articles/
│   ├── docs/                 Knowledge base (gitignored — WIP)
│   ├── public/               Static assets (images, svgs)
│   └── .vitepress/
│       ├── config.mts        Site config (nav, i18n, sitemap)
│       └── theme/            Custom theme (orange brand color)
└── package.json
```

---

## Local development

### Prerequisites

- Node.js ≥ 22
- `yarn` (recommended) or `npm`

### Setup

```bash
yarn
```

### Run dev server

```bash
yarn dev
# → http://localhost:8080
```

### Build for production

```bash
yarn build
```

Output goes to `site/.vitepress/dist/`.

### Preview the production build

```bash
yarn preview
```

---

## Adding content

### New article

1. Create `site/articles/[slug].md`
2. Add frontmatter:

```yaml
---
title: "Article title"
description: "1-sentence summary for SEO"
date: 2026-05-18
---
```

### New portfolio case study

1. Create `site/portfolio/[slug]/index.md`
2. Use template: *Problem → Approach → Result → Stack → Learnings*
3. Mirror at `site/th/portfolio/[slug]/index.md` for TH

---

## Conventions

- **URLs:** kebab-case (`create-cloud-run`, not `create_cloud_run`)
- **Headings:** sentence case (not Title Case)
- **Internal links:** absolute paths (`/about/`), not relative
- **Images:** put in `site/public/images/[section]/` — referenced as `/images/[section]/...`
- **Don't use** the word "Blog" — use **Articles** (brand) or **Docs** (KB)

---

## Tech stack

- **VitePress 1.x** — static site generator (Vue + Vite)
- **`@red-asuka/vitepress-plugin-tabs`** — tabbed code blocks
- **Local search** (built into VitePress) — no external service
- Custom theme — orange brand palette (`--c-brand: darkorange`)

---

## Deployment

Deployed via GitHub Pages (`.github/workflows/`) at `https://kittaweek.github.io`.

---

## License

[MIT](./LICENSE) © 2023–present Kittawee Kongpan
