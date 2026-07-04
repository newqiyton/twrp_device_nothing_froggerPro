#!/system/bin/sh

# Load touch drivers if they didn't load
# Adapted from chickendrop89

DRIVERS="panel_event_notifier qts goodix_ts st_fts touchpanel_event_notify ft3683g atmel_mxt_ts"
MODULES_DIR="/lib/modules"

for d in $DRIVERS; do
  lsmod | grep -q "^$d" && continue
  path=$(find "$MODULES_DIR" -name "$d.ko" | head -n 1)
  if [ -f "$path" ]; then
    insmod "$path"
    echo "Force inserted module: $d" >>/tmp/recovery.log
  fi
done

