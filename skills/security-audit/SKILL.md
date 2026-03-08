---
name: security-audit
description: Sicherheitsaudit des Codes. Prueft auf OWASP Top 10, Secrets, Abhaengigkeiten und DSGVO.
---

# Security Audit

Fuehre ein umfassendes Sicherheitsaudit durch.

## Pruefbereiche

### 1. OWASP Top 10
- [ ] Injection (SQL, NoSQL, OS Command, LDAP)
- [ ] Broken Authentication
- [ ] Sensitive Data Exposure
- [ ] XML External Entities (XXE)
- [ ] Broken Access Control
- [ ] Security Misconfiguration
- [ ] Cross-Site Scripting (XSS)
- [ ] Insecure Deserialization
- [ ] Using Components with Known Vulnerabilities
- [ ] Insufficient Logging & Monitoring

### 2. Secrets & Credentials
- Suche nach hardcodierten Secrets: API-Keys, Passwoerter, Tokens
- Pruefe .env, .env.*, config-Dateien
- Pruefe ob .gitignore Secrets ausschliesst
- Pruefe Git-History auf versehentlich committete Secrets

### 3. Abhaengigkeiten
- Bekannte Vulnerabilities in Dependencies?
- Veraltete Pakete mit Sicherheitsproblemen?
- Unnoetige Dependencies die Angriffsflaeche vergroessern?

### 4. DSGVO / Datenschutz
- Werden personenbezogene Daten verarbeitet?
- Ist die Verarbeitung auf das Noetige beschraenkt?
- Gibt es Logging von personenbezogenen Daten?
- Externe Services: Wo fliessen Daten hin?

### 5. Infrastruktur
- HTTPS erzwungen?
- CORS korrekt konfiguriert?
- CSP-Header gesetzt?
- Rate Limiting vorhanden?

## Output

### Befunde
| Schwere | Bereich | Beschreibung | Empfehlung |
|---------|---------|-------------|------------|
| KRITISCH/HOCH/MITTEL/NIEDRIG | ... | ... | ... |

### Zusammenfassung
- Gesamtbewertung: [Sicher / Verbesserungsbedarf / Kritisch]
- Sofort-Massnahmen: ...
- Empfehlungen: ...

$ARGUMENTS
