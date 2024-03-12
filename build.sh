#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo -e "Missing arguments: [apk|appbundle|ios|web] [release|debug|profile] [dev|staging|prod]"
  exit 128
fi

if [ "$2" == "release" ] || [ "$2" == "profile" ]; then
  buildType=--$2
else
  buildType=""
fi

DART_DEFINES=$(scripts/generate_dart_defines.sh $3)

if [ $? -ne 0 ]; then
  echo -e "Failed to generate dart defines"
  exit 1
fi

echo -e "artifact: $1, type: $2, flavor: $3\n"
echo -e "DART_DEFINES: $DART_DEFINES\n"

./rebuild.sh && \
flutter build $1 $buildType$DART_DEFINES

