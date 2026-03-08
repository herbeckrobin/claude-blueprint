---
name: bugfix
description: Systematisches Debugging und Bugfixing. Nutze wenn ein Bug gemeldet wird oder ein Fehler auftritt.
---

# Systematisches Bugfixing

Gehe den Bug strukturiert an — keine Schnellschuesse.

## Phase 1: Verstehen
- Was ist das erwartete Verhalten?
- Was ist das tatsaechliche Verhalten?
- Seit wann tritt der Bug auf? (Git-History pruefen)
- Gibt es Error-Messages oder Logs?

## Phase 2: Reproduzieren
- Kann der Bug reproduziert werden?
- Unter welchen Bedingungen tritt er auf?
- Ist er konsistent oder sporadisch?

## Phase 3: Lokalisieren
- Nutze Explore-Subagent um betroffenen Code zu finden
- Finde die ROOT CAUSE — nicht nur das Symptom
- Pruefe ob der Bug an mehreren Stellen auftritt

## Phase 4: Fix planen
- Was muss geaendert werden?
- Gibt es Seiteneffekte?
- Ist der Fix minimal und gezielt?

## Phase 5: Implementieren
- Minimaler Fix — kein Refactoring nebenbei
- Keine umliegenden "Verbesserungen"
- Nur das Problem loesen

## Phase 6: Verifizieren
- Bug ist behoben
- Keine Regressionen
- Tests anpassen/ergaenzen wenn noetig

## Output
```
Bug:        [Kurze Beschreibung]
Ursache:    [Root Cause]
Fix:        [Was wurde geaendert]
Dateien:    [Betroffene Dateien]
Risiko:     [niedrig/mittel/hoch]
Verifiziert: [ja/nein]
```

$ARGUMENTS
