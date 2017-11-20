#!/bin/sh

#exec su-exec $@
# Re-set permission to the `testuser` user
# This avoids permission denied if the data volume is mounted by root
exec su-exec aiteam /usr/local/bin/creator.sh
