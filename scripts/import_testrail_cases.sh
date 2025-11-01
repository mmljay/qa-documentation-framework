#!/usr/bin/env bash
set -euo pipefail
# Usage:
# TESTRAIL_BASE=https://your-company.testrail.io \
# TESTRAIL_USER=email TESTRAIL_TOKEN=api_key \
# PROJECT_ID=1 SECTION_ID=2 \
# ./scripts/import_testrail_cases.sh testrail_templates/test_case_template.csv

CSV="${1:-}"
[[ -f "$CSV" ]] || { echo "❌ CSV not found"; exit 1; }

echo "📥 (Demo) Would iterate CSV rows and post them to TestRail API for project $PROJECT_ID..."

# Example real API call (disabled for demo):
# while IFS=, read -r TITLE SECTION TYPE PRIORITY REFS PRE STEPS EXPECTED; do
#   curl -u "$TESTRAIL_USER:$TESTRAIL_TOKEN" \
#   -H "Content-Type: application/json" \
#   -d "{\"title\":\"$TITLE\",\"type_id\":1,\"priority_id\":2,\"refs\":\"$REFS\"}" \
#   "$TESTRAIL_BASE/index.php?/api/v2/add_case/$SECTION_ID"
# done < <(tail -n +2 "$CSV")
