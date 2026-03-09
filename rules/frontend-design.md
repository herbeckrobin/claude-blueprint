---
paths: ["*.tsx", "*.jsx", "*.vue", "*.svelte", "*.html", "*.css", "*.scss"]
---

# Frontend Design Rules — Anti-Slop

> Ziel: AI-generiertes UI soll individuell, modern und durchdacht wirken — nicht wie jedes andere Vibe-Coding-Projekt.

---

## Verboten (AI-Slop vermeiden)

- KEINE generischen Fonts: Inter, Roboto, Arial, Open Sans als alleinige Wahl
- KEINE purple-to-blue Gradients auf weissem Hintergrund
- KEINE drei gleichfoermigen Cards mit Icon + Heading + Text im Grid
- KEINE `rounded-lg` ueberall — Border-Radii bewusst und variiert einsetzen
- KEINE Glassmorphism-Blur als reiner Dekorations-Effekt ohne Funktion
- KEINE cookie-cutter Hero-Sections (Big Text + Subtitle + CTA Button)
- KEINE gleichmaessig verteilten Farbpaletten — immer dominant + accent
- KEINE Neon-Akzente auf dunklem Hintergrund als Default-Aesthetik
- KEINE symmetrischen Layouts wenn Asymmetrie interessanter waere

---

## Pflicht (Distinctive Design)

### Typografie
- Distinctive Display-Font + passende Body-Font paaren
- Font-Vorschlaege: Outfit, Syne, Space Mono, Instrument Serif, Bricolage Grotesque, Geist, Satoshi
- Fluid Typography mit `clamp()`: `font-size: clamp(1.75rem, calc(1.25rem + 2.5vw), 3.5rem)`
- Variable Fonts fuer fliessende Gewichtsuebergaenge wenn moeglich

### Farben
- Kohaerentes Farbsystem mit CSS Custom Properties
- Eine dominante Farbe + ein scharfer Akzent — nicht viele gleichstarke Farben
- Projekt-spezifische Farbwahl, keine generischen Presets oder Theme-Defaults

### Layout
- Asymmetrische Layouts, Overlap, unerwartete Grid-Kompositionen
- Variierende Card-Groessen und Proportionen statt gleichfoermiger Grids
- Container Queries fuer Component-basierte Responsiveness
- `clamp()`, `min()`, `max()` statt starrer Breakpoints

### Motion & Animation
- Mindestens eine orchestrierte Eingangsanimation (staggered reveal mit `animation-delay`)
- CSS-only Loesungen bevorzugen, Motion-Libraries nur wenn noetig
- GPU-freundliche Transforms und Opacity fuer mobile Performance
- Hover-States die ueberraschen, nicht nur `opacity: 0.8`

### Backgrounds & Depth
- Layered CSS Gradients statt solider Hintergrundfarben
- Tiefe erzeugen: Schatten-Hierarchie, Z-Ebenen, subtile Patterns
- Kontextuelle Effekte die zum Inhalt passen

---

## Prozess

1. **VOR dem Coden**: Aesthetische Richtung festlegen oder nachfragen
   - Beispiele: brutal-minimal, retro-futuristic, organic, soft-brutalism, editorial, maximalist
2. **Jedes UI-Element** muss eine gestalterische Entscheidung widerspiegeln, nicht den Default
3. **Komplexitaet an Vision anpassen**: Maximalist = elaborate Animations, Minimalist = Praezision bei Spacing/Typo
4. **Nie zweimal die gleiche Design-Sprache** verwenden wenn mehrere Projekte gebaut werden
5. **Immer fragen** wenn keine Design-Vorgaben existieren — nicht einfach den generischen Default nehmen

---

## Aktuelle Trends (2025/2026)

Bevorzuge diese Ansaetze wenn sie zum Projekt passen:

- **Active/Interactive Bento Grids** — Tiles die bei Hover expandieren oder Daten-Layer enthuellen
- **Soft Brutalism** — Bold Typo + handmade Feeling mit weicheren Kanten
- **Exaggerated Minimalism** — Uebergrosse Typo, grosszuegiger Whitespace, kantige Buttons
- **Kinetic Typography** — Scroll-triggered Text-Animationen als Storytelling
- **Spatial Continuity** — Fluid State Transitions die raeumliche Beziehungen erklaeren
