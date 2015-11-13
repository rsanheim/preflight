# preflight

Preflight keeps your git repos up to date in the background.

So far most of this is figuring out how to wire launchd to run this thing,
but this may do more eventually.

## Setup (mac)

Use launchd to run every n minutes on Mac - change the interval in the plist
as you see fit.

    ln -s ~/src/preflight/com.robsanheim.preflight.plist ~/Library/LaunchAgents/
    launchctl load -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist

Verify its running:

    launchctl list | grep preflight


## Uninstall

    launchctl unload -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist
