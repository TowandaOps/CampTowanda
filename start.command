#!/bin/zsh

cd "/Users/j_brinn/Documents/New project" || exit 1

PORT=8000
URL="http://localhost:${PORT}/matrix.html"

if lsof -iTCP:${PORT} -sTCP:LISTEN >/dev/null 2>&1; then
  open "${URL}"
  exit 0
fi

open "${URL}"
python3 -m http.server "${PORT}"
