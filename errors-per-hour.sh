#!/bin/bash
# count ERROR lines per HOUR in sample.log
LOGFILE="$1"

if [ -z "$LOGFILE" ]; then
echo "Usage : ./errors-per-hour.sh <logfile>"
exit 1
fi
grep ERROR "$LOGFILE" | cut -d " " -f 2 | cut -d ":" -f 1 | sort | uniq -c