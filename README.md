# preflight

Preflight keeps your git repos up to date in the background.

So far most of this is figuring out how to wire launchd to run this thing,
but this may do more eventually.

## Getting Started (mac)

```
git clone https://github.com/rsanheim/preflight.git
cd preflight
./preflight
```

To configure things, drop a file in ~/.preflight. Here you list the top level 'root directories' that contain all your git repos.  For example:

```
---
root_dirs:
  - ~/src/root_dir_1
  - ~/src/root_dir_2

```

You can use launchd to run every n minutes on Mac - change the interval in the plist as you see fit.

    ln -s ~/src/preflight/com.robsanheim.preflight.plist ~/Library/LaunchAgents/
    launchctl load -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist

Verify its running:

    launchctl list | grep preflight


## Uninstall from launchd

    launchctl unload -w ~/Library/LaunchAgents/com.robsanheim.preflight.plist
