#!/bin/bash

DEPENDENCIES_COMMON="qtbase5-dev qtdeclarative5-dev qtmultimedia5-dev libqt5svg5 libtinyxml-dev libgsl0-dev libgtkmm-2.4-dev libace-dev subversion cmake dpkg wget"
# Leave empty if you don't use dependancies from backports otherwise fill the following with the line that add backports in the distro sources.list (platform dependant)
DEPENDENCIES_wheezy="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls libgoocanvasmm-dev"
DEPENDENCIES_jessie="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls libgtkdataboxmm-dev libgoocanvasmm-dev"
DEPENDENCIES_trusty="qtdeclarative5-qtquick2-plugin qtdeclarative5-window-plugin qtdeclarative5-qtmultimedia-plugin qtdeclarative5-controls-plugin qtdeclarative5-dialogs-plugin libgtkdataboxmm-dev libgoocanvasmm-dev"
DEPENDENCIES_utopic="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls libgtkdataboxmm-dev libgoocanvasmm-dev"
DEPENDENCIES_vivid="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls libgtkdataboxmm-dev libgoocanvasmm-dev"
DEPENDENCIES_wily="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls libgtkdataboxmm-dev libgoocanvasmm-2.0-dev"
DEPENDENCIES_xenial="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls libgtkdataboxmm-dev"

BACKPORTS_URL_wheezy="http://http.debian.net/debian"
#export YARP_VERSION=2.3.65
export YARP_PACKAGE_VERSION=2.3.65
#use YARP source code revision to fetch a different version tag or trunk
#export YARP_REVISION=trunk
export YARP_SOURCES_VERSION="trunk"
# always use a revision number >=1
export YARP_DEB_REVISION=0r1

YARP_CMAKE_OPTIONS="\
 -DCREATE_GUIS=TRUE \
 -DCREATE_YARPMANAGER_CONSOLE=TRUE \
 -DCMAKE_INSTALL_PREFIX=/usr \
 -DCREATE_SHARED_LIBRARY=TRUE \
 -DCREATE_LIB_MATH=TRUE \
 -DCREATE_IDLS=TRUE \
 -DENABLE_yarpidl_thrift=TRUE \
 -DCREATE_OPTIONAL_CARRIERS=TRUE \
 -DENABLE_yarpcar_tcpros_carrier=TRUE \
 -DENABLE_yarpcar_xmlrpc_carrier=TRUE \
 -DENABLE_yarpcar_bayer_carrier=TRUE \
 -DUSE_LIBDC1394=FALSE \
 -DENABLE_yarpcar_priority_carrier=TRUE"
