#!/bin/sh
set -euo pipefail

VERSION=$(git rev-parse --abbrev-ref HEAD)
if [ "$VERSION" = "HEAD" ]; then
	VERSION=$(git describe --exact-match --abbrev=0 | sed 's/[^0-9.]*//g')
else
	VERSION="$(echo $VERSION | tr '/' '-')"
fi
echo "Save '$VERSION' to '${PLUGIN_OUTPUT_FILE:-.project-version}'"
echo -n "$VERSION" > ${PLUGIN_OUTPUT_FILE:-.project-version}
