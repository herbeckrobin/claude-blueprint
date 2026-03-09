---
globs: ["**/*.html", "**/*.php", "**/*.js", "**/*.ts", "**/*.jsx", "**/*.tsx", "**/*.twig", "**/*.blade.php", "**/*.vue", "**/*.astro", "**/*.svelte", "**/*.css", "**/*.scss"]
---

# Rechtliche Compliance — Deutsche Webprojekte

> Alle Webprojekte muessen deutschem/EU-Recht entsprechen. Proaktiv warnen wenn Verstoesse erkannt werden.

---

## DSGVO / Datenschutz

### Externe Ressourcen — STRIKT VERBOTEN ohne Einwilligung
- **Google Fonts**: NIEMALS von fonts.googleapis.com laden — immer lokal hosten
- **CDNs** (cdnjs, unpkg, jsdelivr): Vermeiden, lokal hosten. Jeder externe Request uebertraegt IP-Adressen
- **Google Analytics / Tag Manager**: Nur mit vorheriger Einwilligung (Cookie-Banner Opt-in)
- **YouTube/Vimeo Embeds**: Nur mit 2-Klick-Loesung oder Consent-Wrapper
- **Google Maps**: Nur mit Consent, Alternativ: Screenshot + Link oder OpenStreetMap
- **Social Media Embeds** (Facebook, Twitter, Instagram): Nur mit 2-Klick oder Shariff
- **Externe Tracking-Pixel / Beacons**: Nur mit expliziter Einwilligung
- **reCAPTCHA**: Google-Dienst — Alternative wie hCaptcha oder Honeypot bevorzugen

### Cookie-Banner / Consent Management
- Cookie-Banner ist Pflicht wenn nicht-essentielle Cookies gesetzt werden
- **Opt-in** vor dem Laden von Tracking/Marketing — NICHT nachtraeglich
- Technisch notwendige Cookies brauchen KEIN Consent
- "Alle akzeptieren" und "Alle ablehnen" muessen gleichwertig gestaltet sein (keine Dark Patterns)
- Granulare Auswahl muss moeglich sein (Kategorien: Notwendig, Statistik, Marketing)
- Consent-Entscheidung muss gespeichert und aenderbar sein
- Empfehlung: Selbstgehostete Loesung oder Klaro, Cookiebot, Borlabs Cookie (WordPress)

### Formulare und Datenerfassung
- Kontaktformulare: Nur notwendige Felder, Hinweis auf Datenschutzerklaerung, Checkbox fuer Einwilligung
- Newsletter: Double Opt-in ist Pflicht
- Daten nur so lange speichern wie noetig (Loeschkonzept)
- SSL/TLS ist Pflicht fuer alle Formulare und Login-Seiten

### Proaktive Pruefung
Bei jedem neuen externen `<script>`, `<link>`, `<iframe>`, `fetch()`, oder CDN-Import:
1. Wird eine Verbindung zu einem externen Server aufgebaut?
2. Werden dabei IP-Adressen oder andere personenbezogene Daten uebertragen?
3. Ist dafuer eine Einwilligung noetig?
4. → Wenn ja: WARNEN und Alternative vorschlagen

---

## Impressum (§5 TMG / DDG)

### Pflichtangaben pruefen wenn Impressum-Seite bearbeitet wird:
- Vollstaendiger Name / Firmenname
- Anschrift (keine Postfach-Adresse)
- E-Mail-Adresse
- Telefonnummer (umstritten, aber empfohlen)
- Bei Unternehmen: Rechtsform, Vertretungsberechtigte, Handelsregister + Nummer
- USt-IdNr. wenn vorhanden
- Zustaendige Aufsichtsbehoerde wenn regulierter Beruf
- Impressum muss von jeder Seite mit max. 2 Klicks erreichbar sein

---

## Datenschutzerklaerung (Art. 13/14 DSGVO)

### Pflichtinhalte pruefen:
- Name und Kontakt des Verantwortlichen
- Zweck und Rechtsgrundlage jeder Datenverarbeitung
- Empfaenger der Daten (z.B. Hoster, Newsletter-Dienst)
- Speicherdauer oder Kriterien fuer die Dauer
- Hinweis auf Betroffenenrechte (Auskunft, Loeschung, Widerspruch, Portabilitaet)
- Recht auf Beschwerde bei der Aufsichtsbehoerde
- **Muss alle tatsaechlich genutzten Dienste auflisten** — wenn Code einen Dienst einbindet, muss er in der DSE stehen

### Konsistenz-Check
- Wenn ein externer Dienst im Code eingebunden wird → Pruefen ob er in der Datenschutzerklaerung erwaehnt ist
- Wenn ein Dienst aus der DSE entfernt wird → Pruefen ob er noch im Code eingebunden ist

---

## Barrierefreiheit (BFSG ab Juni 2025)

- Semantisches HTML verwenden (`nav`, `main`, `article`, `button` statt `div`)
- Alt-Texte fuer alle informativen Bilder
- Ausreichende Farbkontraste (WCAG AA: 4.5:1 fuer Text)
- Tastatur-Navigation muss funktionieren
- `aria-label` wo noetig, aber nicht uebermaessig
- Focus-Styles nicht entfernen (`outline: none` nur mit besserem Ersatz)
- Bei neuen UI-Komponenten proaktiv auf Barrierefreiheit hinweisen

---

## Backups und Datensicherheit

- Backup-Strategie bei jedem Projekt ansprechen wenn Hosting/Deployment Thema ist
- Mindestens: Datenbank + Dateien, automatisiert, an separatem Ort
- Backup-Restore muss getestet sein
- Bei personenbezogenen Daten: Backup-Loeschung im Loeschkonzept beruecksichtigen

---

## E-Commerce (wenn zutreffend)

- AGB muessen vor Bestellung einsehbar sein
- Widerrufsbelehrung mit korrekter Frist
- Preise inkl. MwSt. und Versandkosten
- Bestelluebersicht vor dem Kauf
- Bestaetigungsmail nach Bestellung

---

## Proaktives Verhalten

**IMMER warnen wenn:**
- Ein externer Dienst eingebunden wird ohne Consent-Mechanismus
- Google Fonts oder andere externe Fonts per URL geladen werden
- Ein Formular ohne SSL, Datenschutz-Hinweis oder Einwilligung gebaut wird
- Eine Webseite kein Impressum oder keine Datenschutzerklaerung hat/referenziert
- Tracking-Code ohne vorherige Einwilligung geladen wird
- Cookie-Banner Dark Patterns verwendet (z.B. "Ablehnen" versteckt)
- Personenbezogene Daten ohne Zweckbindung oder Loeschkonzept gespeichert werden
- Barrierefreiheit-Grundlagen missachtet werden

**Ton:** Sachlich aber bestimmt — rechtliche Risiken klar benennen, nicht relativieren.
