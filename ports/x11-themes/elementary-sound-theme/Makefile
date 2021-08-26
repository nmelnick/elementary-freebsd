PORTNAME=	sound-theme
DISTVERSION=	1.1.0
CATEGORIES=	x11-themes
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	A bespoke sound for elementary OS

USES=		gettext meson ninja python:build xorg
USE_XORG=	x11

LICENSE_FILE=	${WRKSRC}/LICENSE.md

USE_GITHUB=	yes
GH_ACCOUNT=	elementary
GH_PROJECT=	sound-theme

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
