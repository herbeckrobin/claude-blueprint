---
name: plan
description: Strukturierte Planung vor der Implementierung. Nutze diesen Skill wenn eine Aufgabe komplex ist, mehrere Dateien betrifft, oder der Scope unklar ist.
---

# Strukturierte Planung

Du wirst jetzt einen detaillierten Implementierungsplan erstellen. Gehe dabei systematisch vor:

## Phase 1: Analyse
- Lies den relevanten Code (nutze Explore-Subagent fuer groessere Bereiche)
- Identifiziere alle betroffenen Dateien und Abhaengigkeiten
- Pruefe ob es bestehende Patterns gibt denen du folgen solltest

## Phase 2: Plan erstellen

Erstelle einen Plan in diesem Format:

### Ziel
Was soll erreicht werden? (1-2 Saetze)

### Betroffene Dateien
| Datei | Aenderung | Risiko |
|-------|-----------|--------|
| ... | ... | niedrig/mittel/hoch |

### Schritte
1. [Konkreter Schritt mit Datei und Beschreibung]
2. ...

### Risiken und Abhaengigkeiten
- Was koennte schiefgehen?
- Welche Seiteneffekte sind moeglich?
- Gibt es Breaking Changes?

### Verifikation
- Wie pruefen wir ob es funktioniert?
- Welche Tests muessen laufen?

### Geschaetzter Umfang
- Anzahl Dateien: X
- Komplexitaet: niedrig/mittel/hoch

## Phase 3: Bestaetigung
Praesentiere den Plan und warte auf Freigabe bevor du implementierst.

$ARGUMENTS
