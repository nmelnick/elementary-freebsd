PORTNAME=	stylesheet
DISTVERSION=	6.0.0
CATEGORIES=	x11-themes
PKGNAMEPREFIX=	elementary-

MAINTAINER=	fbsd@nmelnick.fastmail.com
COMMENT=	The GTK Stylesheet for elementary OS

BUILD_DEPENDS=	sassc:textproc/sassc

USES=		gettext meson ninja python:build xorg
USE_XORG=	x11

LICENSE_FILE=	${WRKSRC}/LICENSE.md

USE_GITHUB=	yes
GH_ACCOUNT=	elementary

BINARY_ALIAS=	python3=${PYTHON_CMD}

.include <bsd.port.mk>
