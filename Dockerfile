FROM fedora:29
RUN dnf install tar sed gcc-c++-x86_64-linux-gnu.x86_64 wget mingw64-gcc-objc++.x86_64 libgcc.x86_64 gcc-objc.x86_64 fuse-devel makeself git libaesgm-devel.x86_64 yasm yasm-devel.x86_64   wxGTK-devel.x86_64 pkgconf-pkg-config.i686 mingw64-pkg-config.x86_64 bzip2 make gcc-c++ clang cppunit.x86_64 gtk3-devel gstreamer-devel clutter-devel libgda-devel gobject-introspection-devel cppunit-devel libgle libGLEW.x86_64 libSM libmcpp-devel.x86_64 libstdc++.x86_64 gcc-objc++.x86_64 mesa-libGLU-devel.x86_64 libglademm24.x86_64 gsm-devel libsmi-devel.x86_64 libsmbios.x86_64 libSM-devel.x86_64  gtk+extra.x86_64  autoconf automake -y
ADD script.sh /root/script.sh
WORKDIR /root
RUN chmod +x script.sh
CMD ./script.sh
