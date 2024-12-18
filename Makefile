PORTNAME=	mybee-qt
PORTVERSION=	24.12.1
CATEGORIES=	emulators

MAINTAINER=	fbsd-ports@convectix.com
COMMENT=	MyBee and CBSD API client
WWW=		https://github.com/myb-project

LICENSE=	MIT

BUILD_DEPENDS=	curl:ftp/curl \
		cmake:devel/cmake \
		xfreerdp:net/freerdp

LIB_DEPENDS=	libvncserver.so:net/libvncserver \
		libfreerdp2.so:net/freerdp \
		libwinpr2.so.2:net/freerdp \
		libssh.so:security/libssh

RUN_DEPENDS=	xfreerdp:net/freerdp

USES=		gl gmake qmake qt:6

USE_GITHUB=	yes
GH_ACCOUNT=	myb-project
GH_TAGNAME=	0552953
PLIST_FILES=	bin/mybee-qt

USE_GL=		gl

USE_QT=		5compat base multimedia tools:build

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/mybee-qt \
		${STAGEDIR}${PREFIX}/bin

post-extract:
	${RM} ${WRKSRC}/libssh/libssh.pro \
		${WRKSRC}/vnc/vnc.pro \
		${WRKSRC}/freerdp2/freerdp2.pro

.include <bsd.port.mk>
