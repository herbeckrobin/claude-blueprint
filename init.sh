#!/bin/bash
# ============================================================
# Claude Blueprint — Projekt-Initialisierung
# ============================================================
# Nutzung:
#   cd MeinProjekt
#   git clone <blueprint-url> .claude
#   .claude/init.sh
#
# Was passiert:
#   1. Erstellt Projekt/ und Code/ Ordner
#   2. Erstellt CLAUDE.md mit @import der base.md
#   3. Optional: User-Level Config nach ~/.claude/ installieren
# ============================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
PROJECT_NAME="$(basename "$PROJECT_DIR")"

# Farben
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

echo ""
echo -e "${BLUE}╔══════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║   Claude Blueprint — Projekt-Setup       ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════╝${NC}"
echo ""
echo -e "Projekt:     ${GREEN}${PROJECT_NAME}${NC}"
echo -e "Verzeichnis: ${PROJECT_DIR}"
echo ""

# ── 1. Ordnerstruktur anlegen ────────────────────────────────

echo -e "${YELLOW}[1/4]${NC} Projektstruktur anlegen..."

if [ ! -d "$PROJECT_DIR/Projekt" ]; then
    mkdir -p "$PROJECT_DIR/Projekt/assets"
    cat > "$PROJECT_DIR/Projekt/notizen.md" << 'NOTIZEN'
# Projekt-Notizen

## Offene Punkte
-

## Entscheidungen
-

## Kontakte
-
NOTIZEN
    echo -e "  ${GREEN}✓${NC} Projekt/ angelegt"
else
    echo -e "  ${BLUE}→${NC} Projekt/ existiert bereits"
fi

if [ ! -d "$PROJECT_DIR/Code" ]; then
    mkdir -p "$PROJECT_DIR/Code"
    echo -e "  ${GREEN}✓${NC} Code/ angelegt"
else
    echo -e "  ${BLUE}→${NC} Code/ existiert bereits"
fi

# ── 2. CLAUDE.md erstellen ───────────────────────────────────

echo -e "${YELLOW}[2/4]${NC} CLAUDE.md erstellen..."

if [ ! -f "$PROJECT_DIR/CLAUDE.md" ]; then
    cat > "$PROJECT_DIR/CLAUDE.md" << CLAUDEMD
# Projekt: ${PROJECT_NAME}

@.claude/base.md

---

## Projektbeschreibung

[Beschreibe hier dein Projekt: Was wird gebaut? Fuer wen? Welcher Tech-Stack?]

---

## Tech-Stack

- **Framework:** [z.B. Next.js, WordPress, Django]
- **Sprache:** [z.B. TypeScript, PHP, Python]
- **Datenbank:** [z.B. PostgreSQL, MySQL, SQLite]
- **Hosting:** [z.B. Vercel, eigener Server, DDEV lokal]

---

## Wichtige Befehle

\`\`\`bash
# Entwicklung starten
# ...

# Build
# ...

# Tests
# ...

# Deployment
# ...
\`\`\`

---

## Projektstruktur

\`\`\`
${PROJECT_NAME}/
├── .claude/          # Claude Blueprint
├── CLAUDE.md         # Diese Datei
├── Projekt/          # Dokumentation und Assets
└── Code/             # Source Code
    └── ...
\`\`\`

---

## Workflow-Regeln

[Projektspezifische Regeln hier ergaenzen]
CLAUDEMD
    echo -e "  ${GREEN}✓${NC} CLAUDE.md erstellt"
else
    echo -e "  ${BLUE}→${NC} CLAUDE.md existiert bereits"
fi

# ── 3. .gitignore fuer Projektroot ──────────────────────────

echo -e "${YELLOW}[3/4]${NC} .gitignore pruefen..."

if [ ! -f "$PROJECT_DIR/.gitignore" ]; then
    cat > "$PROJECT_DIR/.gitignore" << 'GITIGNORE'
# Claude Blueprint Repo (eigenes Repo)
.claude/

# OS
.DS_Store
Thumbs.db

# Editor
*.swp
*.swo
*~
.idea/
.vscode/

# Secrets
.env
.env.*
*.pem
*.key
GITIGNORE
    echo -e "  ${GREEN}✓${NC} .gitignore erstellt"
else
    echo -e "  ${BLUE}→${NC} .gitignore existiert bereits"
fi

# ── 4. User-Level Config installieren ────────────────────────

echo -e "${YELLOW}[4/4]${NC} User-Level Config..."

INSTALL_USER=false

if [ ! -f "$HOME/.claude/CLAUDE.md" ]; then
    echo ""
    echo -e "  ${YELLOW}Noch keine User-Level CLAUDE.md gefunden.${NC}"
    read -p "  User-Level Config nach ~/.claude/ installieren? (j/n) " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Jj]$ ]]; then
        INSTALL_USER=true
    fi
else
    echo -e "  ${BLUE}→${NC} ~/.claude/CLAUDE.md existiert bereits (wird nicht ueberschrieben)"
fi

if [ "$INSTALL_USER" = true ]; then
    cp "$SCRIPT_DIR/user-level/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
    echo -e "  ${GREEN}✓${NC} ~/.claude/CLAUDE.md installiert"

    # settings.json mergen (nicht ueberschreiben)
    if [ -f "$HOME/.claude/settings.json" ]; then
        EXISTING=$(cat "$HOME/.claude/settings.json")
        if [ "$EXISTING" = "{}" ] || [ "$EXISTING" = "" ]; then
            cp "$SCRIPT_DIR/user-level/settings.json" "$HOME/.claude/settings.json"
            echo -e "  ${GREEN}✓${NC} ~/.claude/settings.json installiert"
        else
            echo -e "  ${BLUE}→${NC} ~/.claude/settings.json hat bereits Inhalt (nicht ueberschrieben)"
        fi
    else
        cp "$SCRIPT_DIR/user-level/settings.json" "$HOME/.claude/settings.json"
        echo -e "  ${GREEN}✓${NC} ~/.claude/settings.json installiert"
    fi
fi

# ── Fertig ───────────────────────────────────────────────────

echo ""
echo -e "${GREEN}╔══════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║   Setup abgeschlossen!                   ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════════╝${NC}"
echo ""
echo -e "Naechste Schritte:"
echo -e "  1. ${BLUE}CLAUDE.md${NC} oeffnen und Projektinfos eintragen"
echo -e "  2. Code-Repo in ${BLUE}Code/${NC} anlegen oder klonen:"
echo -e "     ${YELLOW}cd Code && git clone <repo-url> .${NC}"
echo -e "     oder: ${YELLOW}cd Code && git init${NC}"
echo -e "  3. Claude Code starten und loslegen!"
echo ""
echo -e "Blueprint aktualisieren:"
echo -e "  ${YELLOW}cd .claude && git pull${NC}"
echo ""
