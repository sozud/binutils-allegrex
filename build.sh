sudo apt-get update
sudo apt-get install -y build-essential bison libmpfr-dev makeinfo
./configure --target=mips --prefix=/opt/cross --disable-gprofng --disable-gdb --disable-werror --host=i386-pc-linux --build=i386-pc-linux
make -j CFLAGS="-static -fno-stack-protector -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=0"

test -f binutils/ar
file binutils/ar

cp binutils/ar allegrex-ar
cp gas/as-new allegrex-as
cp binutils/strip-new allegrex-strip
cp binutils/objcopy allegrex-objcopy
cp binutils/objdump allegrex-objdump
cp binutils/cxxfilt allegrex-c++filt
cp binutils/nm-new allegrex-nm
strip allegrex-ar
strip allegrex-as
strip allegrex-strip
strip allegrex-objcopy
strip allegrex-objdump
strip allegrex-c++filt
strip allegrex-nm
chmod +x allegrex-ar
chmod +x allegrex-as
chmod +x allegrex-strip
chmod +x allegrex-objcopy
chmod +x allegrex-objdump
chmod +x allegrex-c++filt
chmod +x allegrex-nm
tar -czf allegrex.tar.gz allegrex-ar allegrex-as allegrex-strip allegrex-objcopy allegrex-objdump allegrex-c++filt allegrex-nm