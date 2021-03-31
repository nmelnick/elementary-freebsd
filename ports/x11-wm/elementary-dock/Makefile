# $FreeBSD$

PORTNAME=	dock
PORTVERSION=	0.1.0
CATEGORIES=	x11-wm
MASTER_SITES=	https://github.com/
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Elegant and simple dock, forked from plank

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	valac:lang/vala
LIB_DEPENDS=	libvala-0.48.so:lang/vala \
		libbamf3.so:sysutils/bamf \
		libgee-0.8.so:devel/libgee \
		libgnome-menu-3.so:x11/gnome-menus \
		libgranite.so:x11-toolkits/granite

USES=		gmake gnome libtool localbase meson ninja pkgconfig xorg \
		python:build gettext
USE_GNOME=	glib20 gtk30 gdkpixbuf2 cairo intlhack libxml2 libwnck3 dconf
USE_XORG=	x11 xfixes xi
INSTALLS_ICONS=	yes
GLIB_SCHEMAS=	net.launchpad.plank.gschema.xml

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	dock
GH_TAGNAME=	9150dd81bc3741d76eefee54993d7fc89d8d0d03

BINARY_ALIAS=	python3=${PYTHON_CMD}

OPTIONS_DEFINE=	DBUSMENU
DBUSMENU_DESC=	DBusMenu protocol

DBUSMENU_LIB_DEPENDS=	libdbusmenu-gtk3.so:devel/libdbusmenu
DBUSMENU_MESON_ARGS=	-Denable-dbusmenu=yes

post-patch:
	${REINPLACE_CMD} -e '/CPUMonitor/d' \
		${WRKSRC}/docklets/meson.build

.include <bsd.port.mk>
