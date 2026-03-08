# Claude Blueprint

> Persoenliches Claude Code Setup — Skills, Agents, Hooks & Rules als wiederverwendbares `.claude/`-Verzeichnis fuer alle Projekte.

Einmal klonen, `init.sh` ausfuehren, loslegen. Updates kommen per `git pull` in alle Projekte gleichzeitig.

---

## Quick Start

```bash
# 1. Neues Projekt anlegen
mkdir MeinProjekt && cd MeinProjekt

# 2. Blueprint als .claude/ klonen
git clone git@github.com:herbeckrobin/claude-blueprint.git .claude

# 3. Projekt initialisieren
.claude/init.sh

# 4. Code-Repo einrichten
cd Code
git clone <dein-code-repo> .
# oder: git init
```

---

## Was ist drin?

### Skills (Slash-Commands)

| Befehl | Beschreibung |
|--------|-------------|
| `/plan` | Strukturierte Planung vor Implementierung |
| `/review` | Code-Review der letzten Aenderungen |
| `/security-audit` | OWASP, Secrets, DSGVO Check |
| `/verify` | Build, Tests, Integritaetspruefung |
| `/bugfix` | Systematisches Debugging |
| `/research` | Tiefe Recherche (Code + Web) |
| `/document` | Dokumentation erstellen/aktualisieren |
| `/improve` | Self-Improvement Loop |

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
| `notify-macos.sh` | Notification | macOS-Benachrichtigung bei Abschluss |

### Rules

| Rule | Scope | Beschreibung |
|------|-------|-------------|
| `security.md` | Code-Dateien | Security-Best-Practices (OWASP, DSGVO) |
| `git-workflow.md` | Git-Operationen | Commit-Konventionen |

---

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

---

## Updates

```bash
cd MeinProjekt/.claude && git pull
```

Neue Skills, Agents und Verbesserungen sind sofort in allen Projekten aktiv.

---

## User-Level Config

Beim ersten `init.sh` wird optional installiert:

| Datei | Beschreibung |
|-------|-------------|
| `~/.claude/CLAUDE.md` | Persoenliche Praeferenzen (Sprache, Arbeitsweise) |
| `~/.claude/settings.json` | Auto-Memory aktivieren |

Diese gelten fuer **alle** Projekte, nicht nur das aktuelle.

---

## Philosophie

- **Unternehmerisch mitdenken** — nicht nur Code schreiben, sondern Geschaeftsziele verstehen
- **Planen vor Ausfuehren** — Plan-Mode bei komplexen Aufgaben
- **Verifizieren nach jeder Aenderung** — Tests, Security, Build
- **Self-Improvement** — aus jedem Projekt lernen (Auto-Memory)
- **DSGVO by Default** — keine externen Fonts/CDNs, Datensparsamkeit

---

## Lizenz

Privates Setup-Repo. Nutzung auf eigene Verantwortung.
