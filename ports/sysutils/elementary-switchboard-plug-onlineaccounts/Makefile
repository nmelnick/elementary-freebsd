PORTNAME=	switchboard-plug-onlineaccounts
DISTVERSION=	6.2.0
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Online Accounts plug for System Settings

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libcamel-1.2.so:databases/evolution-data-server \
		libgee-0.8.so:devel/libgee \
		libgranite.so:x11-toolkits/granite \
		libhandy-1.so:x11-toolkits/libhandy \
		libsoup-2.4.so:devel/libsoup \
		libswitchboard-2.0.so:sysutils/elementary-switchboard

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 cairo gnomedesktop3
USE_XORG=	x11 xfixes

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	switchboard-plug-onlineaccounts

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
