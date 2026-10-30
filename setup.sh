#!/bin/sh
# 작업 공간 루트에서 실행: sh ~/kit/setup.sh
KIT="$(cd "$(dirname "$0")" && pwd)"
if [ -f AGENTS.md ]; then
  printf '\n' >> AGENTS.md
  cat "$KIT/AGENTS.md" >> AGENTS.md   # 이미 있으면 덮어쓰지 않고 덧붙임
else
  cp "$KIT/AGENTS.md" AGENTS.md
fi
echo "done. codex 실행 후 '적용 중인 AGENTS.md 지침을 3줄로 요약해줘'로 확인"
