#!/bin/bash
DART_DEFINES=$(scripts/generate_dart_defines.sh dev)

if [ $? -ne 0 ]; then
  echo -e "Failed to generate dart defines"
  exit 1
fi

echo -e "target: $target, type: $profile, flavor: $env\n"
echo -e "DART_DEFINES: $DART_DEFINES\n"

./rebuild.sh && \
  flutter run -d chrome $DART_DEFINES

