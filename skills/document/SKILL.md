---
name: document
description: Dokumentation erstellen oder aktualisieren. Fuer CLAUDE.md, README, Code-Kommentare oder Projekt-Doku.
---

# Dokumentation

Erstelle oder aktualisiere Dokumentation fuer das angegebene Thema.

## Regeln

### CLAUDE.md
- Nur Informationen die Claude nicht aus dem Code ableiten kann
- Unter 200 Zeilen halten (pro Datei)
- Jede Anweisung muss den Test bestehen: "Wuerde das Entfernen zu Fehlern fuehren?"
- Struktur: Projektinfo → Architektur → Workflows → Regeln

### Code-Kommentare
- WHY dokumentieren, nicht WHAT
- Keine offensichtlichen Kommentare
- Nur wo Logik nicht selbsterklaerend ist

### README
- Nur wenn explizit angefragt
- Quick-Start zuerst, Details spaeter
- Beispiele > Erklaerungen

### Projekt-Dokumentation (Projekt/ Ordner)
- Notizen, Zeitplaene, Kundenanforderungen
- Strukturiert und aktuell halten
- Erledigtes als erledigt markieren

## Output
Zeige die Aenderungen und erklaere kurz was aktualisiert wurde.

$ARGUMENTS
