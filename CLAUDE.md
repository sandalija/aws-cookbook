# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Docusaurus-based documentation site ("AWS Cookbook") — a personal knowledge base for AWS certifications notes and recipes. Content is written in Spanish (`defaultLocale: "es"`).

## Commands

```bash
yarn start        # Start local dev server at localhost:3000
yarn build        # Build static site into /build
yarn serve        # Serve the built site locally
yarn typecheck    # Run TypeScript type checking
yarn clear        # Clear Docusaurus cache (useful when docs changes aren't reflected)
```

## Content Structure

Two separate doc collections, each with auto-generated sidebars from directory structure:

- `docs/` — Certification notes (SAA C03, etc.), served at `/docs`, sidebar: `certificationsNotesSidebar`
- `recipes/` — AWS recipes/how-tos, served at `/recipes`, sidebar: `recipesSidebar`

Sidebar ordering is controlled by filename prefixes (e.g., `01-`, `02-`). Category pages use `index.md`.

Mermaid diagrams are supported in markdown.

## Commit Conventions

Commits must follow [Conventional Commits](https://www.conventionalcommits.org/) (enforced by commitlint + husky):

```
feat: ...
fix: ...
chore: ...
docs: ...
ci: ...
```

Releases are managed via `release-it` with the Angular changelog preset. Release commits use `chore: release v${version}`.

## Formatting

Prettier is configured via lint-staged and runs on all files at commit time. Format on save is enabled in the devcontainer.
