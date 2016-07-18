TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

DEFINES += ENAGLO
DEFINES += ENAQZS
DEFINES += ENACMP
DEFINES += NFREQ=3

INCLUDEPATH += $$PWD/../rtklib

QMAKE_CXXFLAGS += -O2 -lm -lrt -lpthreads

SOURCES += \
    rtkrcv.c \
    vt.c \
    ../rtklib/rtkcmn.cpp \
    ../rtklib/rtkpos.cpp \
    ../rtklib/rcv/binex.c \
    ../rtklib/rcv/crescent.c \
    ../rtklib/rcv/gw10.c \
    ../rtklib/rcv/javad.c \
    ../rtklib/rcv/novatel.c \
    ../rtklib/rcv/nvs.c \
    ../rtklib/rcv/rcvlex.c \
    ../rtklib/rcv/rt17.c \
    ../rtklib/rcv/septentrio.c \
    ../rtklib/rcv/skytraq.c \
    ../rtklib/rcv/ss2.c \
    ../rtklib/rcv/ublox.c \
    ../rtklib/convgpx.c \
    ../rtklib/convkml.c \
    ../rtklib/convrnx.c \
    ../rtklib/datum.c \
    ../rtklib/download.c \
    ../rtklib/ephemeris.c \
    ../rtklib/geoid.c \
    ../rtklib/gis.c \
    ../rtklib/ionex.c \
    ../rtklib/lambda.c \
    ../rtklib/options.c \
    ../rtklib/pntpos.c \
    ../rtklib/postpos.c \
    ../rtklib/ppp.c \
    ../rtklib/ppp_ar.c \
    ../rtklib/ppp_corr.c \
    ../rtklib/preceph.c \
    ../rtklib/qzslex.c \
    ../rtklib/rcvraw.c \
    ../rtklib/rinex.c \
    ../rtklib/rtcm.c \
    ../rtklib/rtcm2.c \
    ../rtklib/rtcm3.c \
    ../rtklib/rtcm3e.c \
    ../rtklib/rtksvr.c \
    ../rtklib/sbas.c \
    ../rtklib/solution.c \
    ../rtklib/stream.c \
    ../rtklib/streamsvr.c \
    ../rtklib/tides.c \
    ../rtklib/tle.c

HEADERS += \
    ../rtklib/rtklib.h \
    vt.h

SUBDIRS += \
    ../rtklib/rtklib.pro
