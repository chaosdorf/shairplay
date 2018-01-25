#!/bin/sh

/etc/init.d/dbus start
/etc/init.d/avahi-daemon start

export PULSE_SERVER=pulse
exec shairplay
