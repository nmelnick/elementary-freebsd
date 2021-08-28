PORTNAME=	greeter
DISTVERSION=	6.0.0
CATEGORIES=	x11
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	LightDM Login and Lock Screen greeter for elementary OS

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	consolekit2>0:sysutils/consolekit2
BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libaccountsservice.so:sysutils/accountsservice \
		libcanberra.so:audio/libcanberra \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		liblightdm-gobject-1.so:x11/lightdm \
		libhandy-1.so:x11-toolkits/libhandy \
		libmutter-6.so:x11-wm/mutter \
		libwingpanel.so:x11-wm/elementary-wingpanel

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gdkpixbuf2
USE_XORG=	x11 xfixes

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	greeter

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
