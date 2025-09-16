#!/usr/bin/env bash

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

wait_for_locks() {
    pacman_lock="/var/lib/pacman/db.lck"
    checkup_lock="${TMPDIR:-/tmp}/checkup-db-${UID}/db.lck"

    while [ -f "$pacman_lock" ] || [ -f "$checkup_lock" ]; do
        sleep 1
    done
}

get_update_count() {
    if command_exists pacman; then
        wait_for_locks
        if command_exists checkupdates; then
            checkupdates | grep -c .
        else
            echo 0
        fi
    elif command_exists dnf; then
        dnf check-update -q 2>/dev/null | grep -c '^[a-z0-9]'
    else
        echo 0
    fi
}

count=$(get_update_count)

if [ "$count" -eq 0 ]; then
    echo '{"text": "", "tooltip": "Up-To-Date"}'
else
    echo "{\"text\": \" $count\", \"tooltip\": \"$count Updates Available\"}"
fi
