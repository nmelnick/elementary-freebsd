#!/usr/local/bin/bash

R=$(cd `dirname "$0"` && pwd)/ports

LIBS=(\
  "devel/libcloudproviders" \
  "x11-toolkits/granite" \
)

SESSION=(\
  "x11-wm/elementary-gala" \
  "x11/elementary-greeter" \
  "x11-wm/elementary-wingpanel" \
  "x11-wm/elementary-default-settings" \
  "x11-wm/elementary-session-settings" \
  "sysutils/elementary-settings-daemon" \
  "x11-themes/elementary-icons" \
  "x11-themes/elementary-sound-theme" \
  "x11-themes/elementary-stylesheet" \
  "x11-themes/elementary-wallpapers" \
)

APPS=(\
  "x11-wm/elementary-dock" \
  "x11-fm/elementary-files" \
  "mail/elementary-mail" \
  "deskutils/elementary-notifications" \
  "deskutils/elementary-onboarding" \
  "x11/elementary-screenshot" \
  "sysutils/elementary-switchboard" \
  "deskutils/elementary-tasks" \
  "x11/elementary-terminal" \
)

PLUGS=(\
  "sysutils/elementary-switchboard-plug-about" \
  "sysutils/elementary-switchboard-plug-datetime" \
  "sysutils/elementary-switchboard-plug-notifications" \
  "sysutils/elementary-switchboard-plug-pantheon-shell" \
  "sysutils/elementary-switchboard-plug-onlineaccounts" \
  "sysutils/elementary-switchboard-plug-sound" \
  "sysutils/elementary-switchboard-plug-useraccounts" \
  "x11-wm/elementary-applications-menu" \
  "x11-wm/elementary-wingpanel-indicator-a11y" \
  "x11-wm/elementary-wingpanel-indicator-datetime" \
  "x11-wm/elementary-wingpanel-indicator-notifications" \
  "x11-wm/elementary-wingpanel-indicator-power" \
  "x11-wm/elementary-wingpanel-indicator-session" \
  "x11-wm/elementary-wingpanel-indicator-sound" \
)

THIRD_PARTY=(\
  "sysutils/pantheon-tweaks" \
)

ORDERING=("${LIBS[@]}" "${SESSION[@]}" "${APPS[@]}" "${PLUGS[@]}" "${THIRD_PARTY[@]}")

for p in "${ORDERING[@]}"; do
        cd "$R/$p"
        echo "=== $R/$p"
        sudo make deinstall && sudo make clean && sudo make package && sudo make install
done
