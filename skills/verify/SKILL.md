---
name: verify
description: Verifiziere dass die letzte Aenderung korrekt funktioniert. Prueft Build, Tests und Integritaet.
---

# Verifikation

Pruefe systematisch ob die letzten Aenderungen korrekt sind.

## 1. Build-Check
- Kompiliert/baut das Projekt ohne Fehler?
- Keine neuen Warnings?
- Alle Assets korrekt generiert?

## 2. Test-Check
- Existierende Tests ausfuehren (in Subagent!)
- Alle Tests gruen?
- Neue Funktionalitaet getestet?

## 3. Integritaets-Check
- Keine unbeabsichtigten Aenderungen an anderen Dateien?
- Keine Debug-Reste oder temporaeren Dateien?
- `.gitignore` aktuell?
- Lock-Files konsistent?

## 4. Funktions-Check
- Funktioniert die Aenderung wie beschrieben?
- Edge Cases beruecksichtigt?
- Error Handling korrekt?

## 5. Regressions-Check
- Bestehende Funktionalitaet noch intakt?
- Keine Breaking Changes?
- API-Kompatibilitaet gewahrt?

## Output
```
Verifikation: [BESTANDEN / FEHLGESCHLAGEN]

Build:        [OK / FEHLER: ...]
Tests:        [OK / FEHLER: ... / KEINE TESTS]
Integritaet:  [OK / WARNUNG: ...]
Funktion:     [OK / FEHLER: ...]
Regression:   [OK / WARNUNG: ...]

Bemerkungen: ...
```

$ARGUMENTS
