#!/bin/bash
# IndexNow Submit — notify Bing/Yandex of all sitemap URLs
# Usage: bash scripts/indexnow-submit.sh
# Key: a9d39cb1bcb44ac19886b900940fbb5a

set -e

INDEXNOW_URL="https://api.indexnow.org/indexnow"
KEY="a9d39cb1bcb44ac19886b900940fbb5a"
HOST="vrisingguides.com"
KEY_LOCATION="https://vrisingguides.com/a9d39cb1bcb44ac19886b900940fbb5a.txt"
SITEMAP="sitemap.xml"

# Extract URLs from sitemap
echo "📋 Extracting URLs from $SITEMAP..."
URLS=$(sed -n 's/.*<loc>\(.*\)<\/loc>.*/\1/p' "$SITEMAP")
COUNT=$(echo "$URLS" | wc -l | tr -d ' ')
echo "   Found $COUNT URLs"

# Convert to JSON array
URL_ARRAY=$(echo "$URLS" | sed 's/.*/"&"/' | paste -sd ',' -)
PAYLOAD=$(cat <<EOF
{
  "host": "$HOST",
  "key": "$KEY",
  "keyLocation": "$KEY_LOCATION",
  "urlList": [${URL_ARRAY}]
}
EOF
)

echo "🚀 Submitting to IndexNow (Bing + Yandex)..."
RESPONSE=$(curl -s -w "\n%{http_code}" -X POST "$INDEXNOW_URL" \
  -H "Content-Type: application/json; charset=utf-8" \
  -d "$PAYLOAD")

HTTP_CODE=$(echo "$RESPONSE" | tail -1)
BODY=$(echo "$RESPONSE" | sed '$d')

if [ "$HTTP_CODE" = "200" ] || [ "$HTTP_CODE" = "202" ]; then
  echo "✅ IndexNow accepted — $COUNT URLs submitted (HTTP $HTTP_CODE)"
else
  echo "❌ IndexNow failed (HTTP $HTTP_CODE): $BODY"
fi

# Also ping Bing sitemap endpoint directly
echo ""
echo "🔔 Pinging Bing sitemap endpoint..."
SITEMAP_URL="https://vrisingguides.com/sitemap.xml"
ENCODED_SITEMAP=$(python3 -c "import urllib.parse; print(urllib.parse.quote('$SITEMAP_URL'))")
BING_PING=$(curl -s -w "\n%{http_code}" "https://www.bing.com/ping?sitemap=$ENCODED_SITEMAP")
BING_CODE=$(echo "$BING_PING" | tail -1)
if [ "$BING_CODE" = "200" ]; then
  echo "✅ Bing sitemap ping OK"
else
  echo "⚠️  Bing ping returned HTTP $BING_CODE"
fi

echo ""
echo "Done. Bing/Yandex should crawl within 24-48 hours."
