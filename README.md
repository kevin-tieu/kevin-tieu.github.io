# Kevin Phat Tieu — personal website

This site uses the [al-folio](https://github.com/alshedivat/al-folio) Jekyll starter and deploys to GitHub Pages.

## How to update

| What to change                                     | File                       |
| -------------------------------------------------- | -------------------------- |
| Name, site URL, navigation, and site-wide settings | `_config.yml`              |
| Biography on the home page                         | `_pages/about.md`          |
| LinkedIn and GitHub links                          | `_data/socials.yml`        |
| Publications                                       | `_bibliography/papers.bib` |
| Projects                                           | `_projects/*.md`           |
| News on the home page                              | `_news/*.md`               |
| CV content                                         | `_data/cv.yml`             |

### How to replace your photo

The site currently uses `assets/img/kevin-tieu.png`. Add a replacement photo to `assets/img/` (for example, `kevin-tieu.jpg`), then change this line in `_pages/about.md`:

```yaml
image: kevin-tieu.jpg
```

Use a portrait-oriented image at least 720 pixels wide. Keep it under about 1 MB so the home page remains quick to load.

### Add a project

Copy an existing file in `_projects/`. Set its `title`, one-sentence `description`, and a numeric `importance` (lower numbers appear first). Use `category: work` to keep it on the projects page.

### Add a publication

Add a BibTeX entry to `_bibliography/papers.bib`. Set `selected = {true}` to show it on the home page; omit it to show only on Publications.

### Add news

Create `_news/YYYY-MM-DD-title.md`:

```markdown
---
layout: post
date: 2026-08-23 12:00:00-0700
inline: true
related_posts: false
---

Your announcement here.
```

## Preview and publish

Run the quick content check:

```sh
sh test_site.sh
```

For a complete local preview, install Docker and run:

```sh
docker compose up
```

Then open `http://localhost:8080`.

To publish, commit and push to `main`. In GitHub, allow Actions **read and write** workflow permissions, then set Pages to deploy the `gh-pages` branch. The deployment workflow is [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml).
