#!/bin/bash
# PreToolUse Hook: Schuetzt sensible Dateien vor versehentlicher Bearbeitung
# Blockiert Edit/Write auf .env, Credentials, und andere sensible Dateien

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // .tool_input.content // empty')

# Keine Datei → durchlassen
[ -z "$FILE_PATH" ] && exit 0

PROTECTED_PATTERNS=(
  ".env"
  ".env.local"
  ".env.production"
  "credentials"
  "secret"
  "private_key"
  "id_rsa"
  ".pem"
  "wp-config.php"
)

for pattern in "${PROTECTED_PATTERNS[@]}"; do
  if [[ "$FILE_PATH" == *"$pattern"* ]]; then
    echo "BLOCKIERT: '$FILE_PATH' ist eine geschuetzte Datei (Pattern: '$pattern'). Bitte bestaetigen." >&2
    exit 2
  fi
done

exit 0
