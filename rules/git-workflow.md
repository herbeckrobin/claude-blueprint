---
globs: [".git/**", "*.md"]
---

# Git Workflow Rules

- Commit-Messages auf Deutsch, im Imperativ
- Nur geaenderte Dateien stagen — kein `git add -A` oder `git add .`
- Kein `--force` Push ohne explizite Anweisung
- Kein `--no-verify` ohne explizite Anweisung
- Neue Commits statt Amend (ausser explizit angefragt)
- Keine Secrets committen (.env, credentials, private keys)
