PORTNAME=	elementary
PORTVERSION=	6.0.0
CATEGORIES=	x11-wm
MASTER_SITES=	https://github.com/

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	elementary OS/pantheon metaport

LIB_DEPENDS=	\
		libslingshot.so:x11-wm/elementary-applications-menu \
		libabout.so:sysutils/elementary-switchboard-plug-about \
		libdatetime.so:sysutils/elementary-switchboard-plug-datetime \
		libnotifications.so:sysutils/elementary-switchboard-plug-notifications \
		libonline-accounts.so:sysutils/elementary-switchboard-plug-onlineaccounts \
		libpantheon-desktop.so:sysutils/elementary-switchboard-plug-pantheon-shell \
		libsound.so:sysutils/elementary-switchboard-plug-sound \
		liba11y.so:x11-wm/elementary-wingpanel-indicator-a11y \
		libdatetime.so:x11-wm/elementary-wingpanel-indicator-datetime \
		libnotifications.so:x11-wm/elementary-wingpanel-indicator-notifications \
		libsound.so:x11-wm/elementary-wingpanel-indicator-sound \
		libgranite.so:x11-toolkits/granite \
		libcloudproviders.so:devel/libcloudproviders

RUN_DEPENDS=	\
		io.elementary.calendar:deskutils/elementary-calendar \
		io.elementary.code:editors/elementary-code \
		plank:x11-wm/elementary-dock \
		io.elementary.files:x11-wm/elementary-files \
		gala:x11-wm/elementary-gala \
		io.elementary.greeter:x11/elementary-greeter \
		io.elementary.mail:mail/elementary-mail \
		io.elementary.notifications:deskutils/elementary-notifications \
		io.elementary.onboarding:deskutils/elementary-onboarding \
		io.elementary.photos:graphics/elementary-photos \
		io.elementary.screenshot:x11/elementary-screenshot \
		io.elementary.settings-daemon:sysutils/elementary-settings-daemon \
		io.elementary.switchboard:sysutils/elementary-switchboard \
		io.elementary.tasks:deskutils/elementary-tasks \
		io.elementary.terminal:x11/elementary-terminal \
		io.elementary.videos:multimedia/elementary-videos \
		io.elementary.wingpanel:x11-wm/elementary-wingpanel \
		io.elementary.calendar:math/pantheon-calculator \
		${PREFIX}/share/glib-2.0/schemas/default-settings.gschema.override:x11-wm/elementary-default-settings \
		${PREFIX}/share/metainfo/io.elementary.wallpapers.appdata.xml:x11-themes/elementary-wallpapers \
		${PREFIX}/share/metainfo/io.elementary.icons.appdata.xml:x11-themes/elementary-icons \
		${PREFIX}/share/xsessions/pantheon.desktop:x11-wm/elementary-session-settings \
		${PREFIX/share/themes/io.elementary.stylesheet.strawberry/plank/dock.theme:x11-themes/elementary-stylesheet \
		${PREFIX}/share/sounds/elementary/index.theme:x11-themes/elementary-sound-theme

USES=		metaport

.include <bsd.port.mk>
