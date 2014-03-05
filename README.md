# preflight

Preflight keeps your git repos up to date in the background.

It can also do other common housekeeping tasks for you, in the background,
as you see fit (soon).

So far most of this is figuring out how to wire launchd to run this thing,
but this may do more eventually.

## Setup (mac)

Use launchd to run every five minutes on Mac:

    ln -s ~/src/preflight/com.robsanheim.preflight.plist ~/Library/LaunchAgents/
    launchctl load -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist

Verify its running:

    launchclt list | grep preflight


## Uninstall

    launchctl unload -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist
