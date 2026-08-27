#!/bin/bash

# TODO 后面应该使用app prefix环境变量，现在玲珑还没添加这个环境变量
export QML_IMPORT_PATH=/opt/apps/$LINGLONG_APPID/files
# 读取当前base的架构
tripletList=$(cat /etc/linglong-triplet-list)
for triplet in $tripletList; do
    export QT_QPA_PLATFORM_PLUGIN_PATH="/runtime/lib/$triplet/qt5/plugins/platforms"
    export QML_IMPORT_PATH="/runtime/lib/$triplet/qt5/qml:$QML_IMPORT_PATH"
    export QT_PLUGIN_PATH="/runtime/lib/$triplet/qt5/plugins"
    break
done
# https://doc.qt.io/qt-5/qtqml-syntax-imports.html#qml-import-path
export QML2_IMPORT_PATH=$QML_IMPORT_PATH
# 设置环境变量，方便在终端中使用qt工具
export PATH=$PATH:/runtime/lib/qt5/bin
export CMAKE_PREFIX_PATH=/usr:/runtime:$PREFIX
