---
paths: ["**/*.js", "**/*.ts", "**/*.jsx", "**/*.tsx", "**/*.php", "**/*.py"]
---

# Security Rules

Bei Aenderungen an Code-Dateien:
- Pruefe Input-Validierung an Systemgrenzen
- Keine `eval()`, `exec()`, `innerHTML` ohne Sanitization
- Keine hardcodierten Secrets oder API Keys
- Prepared Statements / Parameterized Queries fuer Datenbankzugriffe
- Escape User-Input bevor es in HTML/SQL/Shell landet
