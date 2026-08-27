# 安装依赖
bash ./install_dep linglong/sources "$PREFIX"
# 添加qmake配置
envsubst <qt5.conf >$PREFIX/lib/qt5/bin/qt5.conf
# 设置环境变量
mkdir -p $PREFIX/etc
cp profile $PREFIX/etc/
# 删除字体文件
rm -r $PREFIX/share/fonts
/runtime/lib/qt5/bin/qmake --version