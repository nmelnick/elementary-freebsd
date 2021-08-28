PORTNAME=	switchboard-plug-sound
DISTVERSION=	2.2.7
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Switchboard Sound Plug

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libcanberra.so:audio/libcanberra \
		libcanberra-gtk3.so:audio/libcanberra-gtk3 \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy \
		libpulse.so:audio/pulseaudio \
		libpulse-mainloop-glib.so:audio/pulseaudio \
		libswitchboard-2.0.so:sysutils/elementary-switchboard

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	switchboard-plug-sound

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
