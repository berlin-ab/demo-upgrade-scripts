#!/usr/bin/env bash

source ./scripts/gpdb5-environment.sh
gpstop -a
rsync -a --delete gpdb5-data-backup/ gpdb5-data

echo "Remove old tablespace directories"
find /tmp -name GPDB_6_301908232 | xargs rm -rf
