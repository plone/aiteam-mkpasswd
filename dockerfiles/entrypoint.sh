#!/bin/sh
set -euo pipefail

# This avoids permission denied if the data volume is mounted by root
exec su-exec aiteam /usr/local/bin/creator.sh
