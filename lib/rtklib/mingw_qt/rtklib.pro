QT += core
QT -= gui

CONFIG += c89

TARGET = rtklib
CONFIG += console
CONFIG -= app_bundle
QMAKE_CXXFLAGS += -O2 -lm -lrt -lpthreads

DEFINES += ENAGLO
DEFINES += ENAQZS
DEFINES += ENACMP
DEFINES += NFREQ=3
DEFINES += QT_DLL
DEFINES += QT_USED

TEMPLATE = lib

LIBS += -lws2_32

INCLUDEPATH += $$PWD/../../../src/

HEADERS += ../../../src/rtklib.h

SOURCES += \
    ../../../src/convgpx.c \
    ../../../src/convkml.c \
    ../../../src/convrnx.c \
    ../../../src/datum.c \
    ../../../src/download.c \
    ../../../src/ephemeris.c \
    ../../../src/geoid.c \
    ../../../src/gis.c \
    ../../../src/ionex.c \
    ../../../src/lambda.c \
    ../../../src/options.c \
    ../../../src/pntpos.c \
    ../../../src/postpos.c \
    ../../../src/ppp.c \
    ../../../src/ppp_ar.c \
    ../../../src/ppp_corr.c \
    ../../../src/preceph.c \
    ../../../src/qzslex.c \
    ../../../src/rcvraw.c \
    ../../../src/rinex.c \
    ../../../src/rtcm.c \
    ../../../src/rtcm2.c \
    ../../../src/rtcm3.c \
    ../../../src/rtcm3e.c \
    ../../../src/rtkpos.cpp \
    ../../../src/rtksvr.c \
    ../../../src/sbas.c \
    ../../../src/solution.c \
    ../../../src/stream.c \
    ../../../src/streamsvr.c \
    ../../../src/tides.c \
    ../../../src/tle.c \
    ../../../src/rcv/binex.c \
    ../../../src/rcv/crescent.c \
    ../../../src/rcv/gw10.c \
    ../../../src/rcv/javad.c \
    ../../../src/rcv/novatel.c \
    ../../../src/rcv/nvs.c \
    ../../../src/rcv/rcvlex.c \
    ../../../src/rcv/rt17.c \
    ../../../src/rcv/septentrio.c \
    ../../../src/rcv/skytraq.c \
    ../../../src/rcv/ss2.c \
    ../../../src/rcv/ublox.c \
    ../../../src/rtkcmn.cpp \
    ../../../src/callbacks.cpp



