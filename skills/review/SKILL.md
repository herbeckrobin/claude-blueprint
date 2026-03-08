---
name: review
description: Code-Review der letzten Aenderungen. Nutze proaktiv nach groesseren Code-Aenderungen.
---

# Code Review

Fuehre ein gruendliches Code-Review durch. Pruefe die letzten Aenderungen auf:

## 1. Korrektheit
- Funktioniert die Logik wie beabsichtigt?
- Gibt es Edge Cases die nicht behandelt werden?
- Stimmen Typen und Datenstrukturen?

## 2. Sicherheit
- Input-Validierung vorhanden?
- Keine Injection-Moeglichkeiten (SQL, XSS, Command)?
- Secrets/Credentials sicher behandelt?
- DSGVO-konform?

## 3. Qualitaet
- DRY — gibt es Duplikate?
- KISS — ist der Code unnoetig komplex?
- Naming — sind Namen aussagekraeftig?
- Keine Debug-Reste (console.log, TODO, auskommentierter Code)?

## 4. Performance
- Unnoetige Schleifen oder Datenbankabfragen?
- Grosse Objekte im Speicher?
- N+1 Query-Probleme?

## 5. Wartbarkeit
- Kann jemand anderes den Code verstehen?
- Sind Abhaengigkeiten minimal?
- Folgt der Code dem Projekt-Stil?

## Output
Fasse die Ergebnisse zusammen als:
- **OK**: Alles gut, keine Aenderungen noetig
- **Hinweise**: Kleinigkeiten die verbessert werden koennten
- **Probleme**: Dinge die gefixt werden muessen (mit konkretem Vorschlag)

$ARGUMENTS
