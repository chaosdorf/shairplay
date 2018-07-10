#!/bin/sh

rm -f /var/run/avahi-daemon/pid
/etc/init.d/dbus start
/etc/init.d/avahi-daemon start
echo "Sleeping 5 seconds..."
sleep 5

cd /build
exec ./src/shairplay
