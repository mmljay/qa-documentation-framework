#!/usr/bin/env bash
set -euo pipefail
# Usage:
# CONFLUENCE_BASE=https://your-domain.atlassian.net/wiki \
# CONFLUENCE_SPACE=QA CONFLUENCE_PARENT=123456 \
# CONFLUENCE_TOKEN=<email:api_token> \
# ./scripts/export_to_confluence.sh docs/process_mapping.md "QA Process Mapping"

FILE="${1:-}"
TITLE="${2:-'QA Page'}"

if [[ -z "$FILE" || ! -f "$FILE" ]]; then
  echo "❌  Please provide a valid markdown file to publish."
  exit 1
fi

echo "📤 (Demo) Publishing '$FILE' to Confluence as page '$TITLE' in space '$CONFLUENCE_SPACE'..."

# Example real call (disabled for demo):
# curl -X POST "$CONFLUENCE_BASE/rest/api/content" \
#   -H "Authorization: Basic $CONFLUENCE_TOKEN" \
#   -H "Content-Type: application/json" \
#   -d "{\"type\":\"page\",\"title\":\"$TITLE\",\"space\":{\"key\":\"$CONFLUENCE_SPACE\"},\"body\":{\"storage\":{\"value\":\"$(cat "$FILE")\",\"representation\":\"storage\"}}}"

