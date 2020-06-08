#!/bin/sh

# XDG Directory support not implemented yet!
# Its create $HOME/.urserver/urserver.config and log files
# Figure out for XDG Directory Support

# Paths
URSERVER_PATH="/opt/urserver/urserver"
PID_PATH="$HOME/.local/share/urserver/urserver.pid"
ICON_PATH="/usr/share/icons/hicolor/96x96/apps/urserver.png"
CONFIG_PATH="$HOME/.config/urserver/urserver.config"
REMOTES_PATH="$HOME/.config/urserver/remotes/"
BACKUP_PATH="$HOME/.local/share/urserver/backups/"

# Check arguments
NOTIFY=true
WEB=true

for var in "$@"
do
    if ["$var" = "--no-web" ]; then
        WEB=false
    fi
    if ["$var" = "--no-notify" ]; then
        NOTIFY=false
    fi
done

# Start the server
if ! ps -p $(cat $PID_PATH) 2>/dev/null; then
    echo "Starting the server..."
    if "$NOTIFY" = true; then
        if hash notify-send 2>/dev/null; then
            notify-send -i $ICON_PATH 'Unified Remote' 'Starting Unified Remote Server'
        else
            echo "notify-send not available!"
        fi
    fi
    echo "Creating folders..."
    mkdir -p "$HOME/.config/urserver/remotes"
    mkdir -p "$HOME/.local/share/urserver/backups"
    echo "--config=$CONFIG_PATH --remotes=$REMOTES_PATH --daemon --pidfile=$PID_PATH"
else
    echo "Server already running"
fi

# Open the web manager
if "$WEB" = true; then
    echo "Opening web..."
    xdg-open http://localhost:9510/web 2> /dev/null
else
    echo "Skipping web..."
fi
