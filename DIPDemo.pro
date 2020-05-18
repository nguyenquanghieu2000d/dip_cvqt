#-------------------------------------------------
#
# Project created by QtCreator 2016-06-26T22:45:57
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = DIPDemo
TEMPLATE = app
QMAKE_CXXFLAGS += -std=c++11

SOURCES += main.cpp                                                 \
    mainwindow.cpp                                                  \
    ImageFileOpt/ImageFileOpt.cpp                                   \
    ImageProcess/CVImgProc.cpp                                      \
    SubWindow/SelChannelDlg.cpp                                     \
    SubWindow/SelFlipTypeDlg.cpp                                    \
    SubWindow/SelColorReduceDivDlg.cpp                              \
    SubWindow/SelThreshDlg.cpp                                      \
    ImageProcess/SkinDetector.cpp

HEADERS += mainwindow.h                                             \
    ImageFileOpt/ImageFileOpt.h                                     \
    ImageProcess/CVImgProc.h                                        \
    SubWindow/SelChannelDlg.h                                       \
    SubWindow/SelFlipTypeDlg.h                                      \
    SubWindow/SelColorReduceDivDlg.h                                \
    SubWindow/SelThreshDlg.h                                        \
    ImageProcess/SkinDetector.h

FORMS   += mainwindow.ui                                            \
    SubWindow/SelChannelDlg.ui                                      \
    SubWindow/SelFlipTypeDlg.ui                                     \
    SubWindow/SelColorReduceDivDlg.ui                               \
    SubWindow/SelThreshDlg.ui

win32 {

OpenCV_RootDir = D:\OpenCV249

INCLUDEPATH += $$OpenCV_RootDir\build\include

OpenCV_LIBS_PREFIX = $$OpenCV_RootDir\build_qt5\lib

LIBS += $$OpenCV_LIBS_PREFIX\libopencv_calib3d249.dll.a             \
    $$OpenCV_LIBS_PREFIX\libopencv_contrib249.dll.a                 \
    $$OpenCV_LIBS_PREFIX\libopencv_core249.dll.a                    \
    $$OpenCV_LIBS_PREFIX\libopencv_features2d249.dll.a              \
    $$OpenCV_LIBS_PREFIX\libopencv_flann249.dll.a                   \
    $$OpenCV_LIBS_PREFIX\libopencv_gpu249.dll.a                     \
    $$OpenCV_LIBS_PREFIX\libopencv_highgui249.dll.a                 \
    $$OpenCV_LIBS_PREFIX\libopencv_imgproc249.dll.a                 \
    $$OpenCV_LIBS_PREFIX\libopencv_legacy249.dll.a                  \
    $$OpenCV_LIBS_PREFIX\libopencv_ml249.dll.a                      \
    $$OpenCV_LIBS_PREFIX\libopencv_objdetect249.dll.a               \
    $$OpenCV_LIBS_PREFIX\libopencv_video249.dll.a
}

unix {

OpenCV_RootDir = /opt/ros/kinetic

INCLUDEPATH += $$OpenCV_RootDir/include/opencv-3.3.1-dev/

OpenCV_LIBS_PREFIX = $$OpenCV_RootDir/lib/x86_64-linux-gnu

LIBS += -L $$OpenCV_LIBS_PREFIX

LIBS += $$OpenCV_LIBS_PREFIX/libopencv_core3.so   \
    $$OpenCV_LIBS_PREFIX/libopencv_highgui3.so    \
    $$OpenCV_LIBS_PREFIX/libopencv_imgproc3.so    \
    $$OpenCV_LIBS_PREFIX/libopencv_imgcodecs3.so  \
    $$OpenCV_LIBS_PREFIX/libopencv_ml3.so         \
    $$OpenCV_LIBS_PREFIX/libopencv_video3.so      \
    $$OpenCV_LIBS_PREFIX/libopencv_videoio3.so
}

RESOURCES += dipdemo.qrc

DESTDIR = ../Output

message($$OpenCV_RootDir)
