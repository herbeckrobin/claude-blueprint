---
name: research
description: Tiefe Recherche zu einem Thema. Kombiniert Codebase-Analyse, Memory und Web-Recherche.
context: fork
---

# Recherche

Fuehre eine gruendliche Recherche zum angegebenen Thema durch.

## Recherche-Reihenfolge

### 1. Codebase (Explore-Subagent)
- Gibt es bestehenden Code der relevant ist?
- Welche Patterns werden im Projekt bereits verwendet?
- Gibt es Config-Dateien oder Docs die helfen?

### 2. Auto-Memory
- Gibt es fruehre Erkenntnisse zu diesem Thema?
- Wurden aehnliche Probleme schon geloest?

### 3. Web-Recherche
- Aktuelle Best Practices und Empfehlungen
- Offizielle Dokumentation
- Bekannte Probleme oder Einschraenkungen
- Alternativen und Vergleiche

## Output-Format

### Zusammenfassung
[2-3 Saetze: Was wurde gefunden]

### Ergebnisse
| Quelle | Erkenntnis | Relevanz |
|--------|-----------|----------|
| ... | ... | hoch/mittel/niedrig |

### Empfehlung
[Konkreter Vorschlag basierend auf der Recherche]

### Offene Fragen
[Was konnte nicht geklaert werden]

$ARGUMENTS
