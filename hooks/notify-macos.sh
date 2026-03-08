#!/bin/bash
# Notification Hook: macOS Benachrichtigung wenn Claude aufmerksam braucht

osascript -e 'display notification "Claude Code braucht deine Aufmerksamkeit" with title "Claude Code" sound name "Ping"' 2>/dev/null
exit 0
