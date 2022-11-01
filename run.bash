#!/usr/bin/env bash

title="Time's up!"
subtitle="Drink water 🚰"
body="100ml is fine :)"
replace_notification_id=0
icon_data="0"
actions='[]'
hints='{}'
expire_timeout=5000

function send_notification() {
    gdbus call --session \
        --dest=org.freedesktop.Notifications \
        --object-path=/org/freedesktop/Notifications \
        --method=org.freedesktop.Notifications.Notify \
        "$title" "$replace_notification_id" "$icon_data" "$subtitle" "$body" \
        $actions $hints $expire_timeout
}

send_notification
