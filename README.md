# elementary-freebsd

The elementary-freebsd project is a work-in-progress with a goal of providing an
elementary OS-like experience on top of FreeBSD. The initial development work
revolves around getting elementary OS components into the FreeBSD ports tree.

Current development work is being done on FreeBSD 13.0-RELEASE.

## Progress

The FreeBSD ports tree already contains the following components, and are up to
date:

* contractor [GitHub](https://github.com/elementary/contractor)
* elementary-calendar [GitHub](https://github.com/elementary/calendar)
* elementary-code [GitHub](https://github.com/elementary/code)
* elementary-photos [GitHub](https://github.com/elementary/photos)
* elementary-videos [GitHub](https://github.com/elementary/videos)
* granite* [GitHub](https://github.com/elementary/granite)
* pantheon-calculator [GitHub](https://github.com/elementary/calculator)

This project adds the following ports, but have not been extensively tested,
may not have the right dependencies yet, and are not yet submitted to the ports
tree:

* elementary-dock (replaces plank) (x11-wm) [GitHub](https://github.com/elementary/dock)
* elementary-files (x11-wm) [GitHub](https://github.com/elementary/files)
* elementary-gala (x11-wm) [GitHub](https://github.com/elementary/gala)
* elementary-greeter (x11) [GitHub](https://github.com/elementary/greeter)
* elementary-icons (x11-themes) [GitHub](https://github.com/elementary/icons)
* elementary-mail (mail) [GitHub](https://github.com/elementary/mail)
* elementary-notifications (deskutils) [GitHub](https://github.com/elementary/notifications)
* elementary-onboarding (deskutils) [GitHub](https://github.com/elementary/onboarding)
* elementary-screenshot (x11) [GitHub](https://github.com/elementary/screenshot)
* elementary-session-settings (x11) [GitHub](https://github.com/elementary/session-settings)
* elementary-settings-daemon [GitHub](https://github.com/elementary/settings-daemon)
* elementary-sound-theme (x11-themes) [GitHub](https://github.com/elementary/sound-theme)
* elementary-switchboard (sysutils) [GitHub](https://github.com/elementary/switchboard)
* elementary-tasks (deskutils) [GitHub](https://github.com/elementary/tasks)
* elementary-terminal (x11) [GitHub](https://github.com/elementary/terminal)
* elementary-wallpapers (x11-themes) [GitHub](https://github.com/elementary/wallpapers)
* elementary-wingpanel (x11-wm) [GitHub](https://github.com/elementary/wingpanel)
  * applications-menu (x11-wm) [GitHub](https://github.com/elementary/applications-menu)
  * wingpanel-indicator-a11y (x11-wm) [GitHub](https://github.com/elementary/wingpanel-indicator-a11y
  * wingpanel-indicator-datetime (x11-wm) [GitHub](https://github.com/elementary/wingpanel-indicator-datetime)
  * wingpanel-indicator-notifications [GitHub](https://github.com/elementary/wingpanel-indicator-notifications)
  * wingpanel-indicator-power [GitHub](https://github.com/elementary/wingpanel-indicator-power)
  * wingpanel-indicator-session [GitHub](https://github.com/elementary/wingpanel-indicator-session)
  * wingpanel-indicator-sound [GitHub](https://github.com/elementary/wingpanel-indicator-sound)
* granite (x11-toolkits) [GitHub](https://github.com/elementary/granite)
* libcloudproviders (devel) [GNOME GitLab](https://gitlab.gnome.org/World/libcloudproviders)

Granite exists in both, as current elementary development work is targeting
libgranite 6.1.0. The granite port is literally just a version change.

## Notes

The granite port is a version bump of the existing port.

The elementary-dock port is a slightly altered version of the existing plank
port.

Gala is currently non-functional, and exists as libraries for other components
to link to.

User Accounts functionality in both the wingpanel session indicator and the
user accounts settings panel is non-functional.

The Online Accounts functionality enables other ports in FreeBSD, like
elementary-calendar, to work.

## Installation

I'm holding off on installation documentation until this is a more complete
package. If you're itching to get started:

* Make sure you have the latest lang/vala port installed
* Run link.sh to link each project into the ports tree, or copy the contents
  into your ports tree
* Install the metaport in x11-wm/elementary OR
* Install each port by going into each directory and performing a
  `sudo make install clean`
* You may now run applications from your current DE of choice. I started with
  gnome3, I am now using xfce4 as a base.

## Future Plans

Calling anything a "future plan" is premature, as this is just an exercise to
see how far things can go. The logical next steps are as follows:

## Port remaining environment components

This will get more difficult, in theory. Agents, indicators, and the settings
ecosystem is _likely_ tied to Linux-specific -- and likely Ubuntu-specific --
modes of operation. Each of the below will probably require more work than
getting a build to run. Some may not be appropriate for the ports tree, like
initial-setup.
  * elementary-camera [GitHub](https://github.com/elementary/camera)
  * elementary-initial-setup [GitHub](https://github.com/elementary/initial-setup)
  * elementary-wingpanel [GitHub](https://github.com/elementary/wingpanel)
    * wingpanel-indicator-bluetooth [GitHub](https://github.com/elementary/wingpanel-indicator-bluetooth)
    * wingpanel-indicator-keyboard [GitHub](https://github.com/elementary/wingpanel-indicator-keyboard)
    * wingpanel-indicator-music [GitHub](https://github.com/elementary/wingpanel-indicator-music)
    * wingpanel-indicator-nightlight [GitHub](https://github.com/elementary/wingpanel-indicator-nightlight)
    * wingpanel-indicator-privacy [GitHub](https://github.com/elementary/wingpanel-indicator-privacy)
  * elementary-shortcut-overlay [GitHub](https://github.com/elementary/shortcut-overlay)
  * pantheon-agent-geoclue2 [GitHub](https://github.com/elementary/pantheon-agent-geoclue2)
  * pantheon-agent-polkit [GitHub](https://github.com/elementary/pantheon-agent-polkit)

## Things that won't make it

* Elementary AppCenter is designed for Debian packages and Flatpaks, so
  probably won't be useful or worth it. It may be something more modular than I
  am expecting, so this could change categories some day.
* wingpanel-indicator-network relies on NetworkManager, which does not exist
* Porting feedback would not be fair, the elementary team is absolutely not
  going to care about bugs on FreeBSD.
