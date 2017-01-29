#
# Versioning
#

set(LIBWEBRTC_MAJOR_VERSION 0)
set(LIBWEBRTC_MINOR_VERSION 0)
set(LIBWEBRTC_PATCH_VERSION 1)
set(LIBWEBRTC_BUILD_VERSION rc.4)

set(LIBWEBRTC_API_VERSION
    "${LIBWEBRTC_MAJOR_VERSION}.${LIBWEBRTC_MINOR_VERSION}.${LIBWEBRTC_PATCH_VERSION}")
set(LIBWEBRTC_VERSION
    ${LIBWEBRTC_API_VERSION}-${LIBWEBRTC_BUILD_VERSION})

set(LIBWEBRTC_LIBRARY_PROPERTIES ${LIBWEBRTC_LIBRARY_PROPERTIES}
    VERSION "${LIBWEBRTC_VERSION}"
    SOVERSION "${LIBWEBRTC_API_VERSION}")

set(LIBWEBRTC_WEBRTC_REVISION ae2551232b5249e38298a50f2d9a64d3c862db00)

file(WRITE ${CMAKE_BINARY_DIR}/libwebrtc.h "#ifndef LIBWEBRTC_H_
#define LIBWEBRTC_H_

#define LIBWEBRTC_MAJOR_VERSION   \"${LIBWEBRTC_MAJOR_VERSION}\"
#define LIBWEBRTC_MINOR_VERSION   \"${LIBWEBRTC_MINOR_VERSION}\"
#define LIBWEBRTC_PATCH_VERSION   \"${LIBWEBRTC_PATCH_VERSION}\"
#define LIBWEBRTC_BUILD_VERSION   \"${LIBWEBRTC_BUILD_VERSION}\"
#define LIBWEBRTC_WEBRTC_REVISION \"${LIBWEBRTC_WEBRTC_REVISION}\"

#endif /* LIBWEBRTC_H_ */
")

