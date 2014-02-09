# preflight

## Setup (mac)

Use launchd to run every five minutes on Mac:

  cp com.robsanheim.preflight.plist ~/Library/LaunchAgents/
  launchctl load -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist
