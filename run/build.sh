#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
apps="twixtykit sk-node sk-schema sk-static sk-time sk-client sk-ffmpeg pipeland mpeg-munger bellamie gort shoko"

function bigPrint() {
  echo ""
  echo "===================================="
  echo " Building $1"
  echo "===================================="
  echo ""
}

for app in $apps; do
  (
    bigPrint "$app"
    cd "$DIR/../apps/$app"
    make
  )
done