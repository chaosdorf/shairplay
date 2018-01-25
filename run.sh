#!/bin/sh

/etc/init.d/dbus start
/etc/init.d/avahi-daemon start
echo "Sleeping 5 seconds..."
sleep 5

export PULSE_SERVER=pulse
exec shairplay
