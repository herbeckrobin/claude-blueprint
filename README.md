# Claude Blueprint

Mein persoenliches Claude Code Setup fuer alle Projekte. Einmal klonen, `init.sh` ausfuehren, loslegen.

## Quick Start

```bash
# 1. Neues Projekt anlegen
mkdir MeinProjekt
cd MeinProjekt

# 2. Blueprint als .claude/ klonen
git clone git@github.com:DEIN-USERNAME/claude-blueprint.git .claude

# 3. Projekt initialisieren
.claude/init.sh

# 4. Code-Repo einrichten
cd Code
git clone <dein-code-repo> .
# oder: git init
```

## Was ist drin?

### Skills (Slash-Commands)

| Skill | Befehl | Beschreibung |
|-------|--------|-------------|
| Plan | `/plan` | Strukturierte Planung vor Implementierung |
| Review | `/review` | Code-Review der letzten Aenderungen |
| Security Audit | `/security-audit` | OWASP, Secrets, DSGVO Check |
| Verify | `/verify` | Build, Tests, Integritaetspruefung |
| Bugfix | `/bugfix` | Systematisches Debugging |
| Research | `/research` | Tiefe Recherche (Code + Web) |
| Document | `/document` | Dokumentation erstellen/aktualisieren |
| Improve | `/improve` | Self-Improvement Loop |

### Agents (Subagents)

| Agent | Beschreibung |
|-------|-------------|
| `code-reviewer` | Automatisches Code-Review nach Aenderungen |
| `debugger` | Systematische Fehlersuche |
| `researcher` | Technische Recherche (Code + Web) |
| `security-auditor` | Security Audit mit OWASP-Fokus |

### Hooks

| Hook | Event | Beschreibung |
|------|-------|-------------|
| `protect-files.sh` | PreToolUse | Blockiert Edit/Write auf sensible Dateien |
| `notify-macos.sh` | Notification | macOS-Benachrichtigung |

### Rules

| Rule | Scope | Beschreibung |
|------|-------|-------------|
| `security.md` | Code-Dateien | Security-Best-Practices |
| `git-workflow.md` | Git-Operationen | Commit-Regeln |

## Projektstruktur nach init.sh

```
MeinProjekt/
├── .claude/          ← Dieses Repo (git pull fuer Updates)
│   ├── base.md       ← Blueprint-Basis (importiert in CLAUDE.md)
│   ├── settings.json ← Projekt-Settings
│   ├── skills/       ← Slash-Commands
│   ├── agents/       ← Subagents
│   ├── hooks/        ← Hook-Scripts
│   ├── rules/        ← Pfad-spezifische Regeln
│   └── init.sh       ← Setup-Script
├── CLAUDE.md         ← Projektspezifisch (importiert base.md)
├── Projekt/          ← Doku, Notizen, Assets
│   ├── notizen.md
│   └── assets/
└── Code/             ← Dein Code-Repository
```

## Updates

```bash
cd MeinProjekt/.claude
git pull
```

Neue Skills, Agents, Verbesserungen sind sofort in allen Projekten aktiv.

## User-Level Config

Beim ersten `init.sh` wird optional installiert:
- `~/.claude/CLAUDE.md` — Persoenliche Praeferenzen (Sprache, Arbeitsweise)
- `~/.claude/settings.json` — Auto-Memory aktivieren

Diese gelten fuer ALLE Projekte, nicht nur das aktuelle.
