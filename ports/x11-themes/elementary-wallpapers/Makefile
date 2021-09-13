PORTNAME=	wallpapers
DISTVERSION=	6.0.0
CATEGORIES=	x11-themes
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	Wallpapers designed for elementary OS

USES=		gettext meson ninja python:build xorg
USE_XORG=	x11

LICENSE_FILE=	${WRKSRC}/LICENSE.md

USE_GITHUB=	yes
GH_ACCOUNT=	elementary

BINARY_ALIAS=	python3=${PYTHON_CMD}

post-install:
	@${RLN} ${STAGEDIR}/usr/local/share/backgrounds/odin.jpg ${STAGEDIR}/usr/local/share/backgrounds/elementaryos-default

.include <bsd.port.mk>
