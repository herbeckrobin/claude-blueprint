---
paths: [".git/**", "*.md"]
---

# Git Workflow Rules

- Commit-Messages auf Deutsch, im Imperativ
- Commit-Messages kurz halten — maximal eine Zeile, keine langen Beschreibungen
- NIEMALS `Co-Authored-By` oder andere Author-Markierungen fuer Claude/AI hinzufuegen
- Nur geaenderte Dateien stagen — kein `git add -A` oder `git add .`
- Kein `--force` Push ohne explizite Anweisung
- Kein `--no-verify` ohne explizite Anweisung
- Neue Commits statt Amend (ausser explizit angefragt)
- Keine Secrets committen (.env, credentials, private keys)
