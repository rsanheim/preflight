# preflight

## Setup (mac)

Use launchd to run every five minutes on Mac:

  ln -s ~/src/preflight/com.robsanheim.preflight.plist ~/Library/LaunchAgents/
  launchctl load -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist

Verify its running:

  launchclt list | grep sanheim


## Uninstall

  launchctl unload -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist
