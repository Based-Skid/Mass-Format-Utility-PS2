apt-get update -y && apt-get upgrade -y
mkdir /tempdir
git clone git://github.com/ps2dev/ps2toolchain.git && cd /tempdir/toolchain && ./toolchain-sudo.sh
#git clone git://github.com/ps2dev/ps2eth.git /ps2dev/ps2eth \
#&& make -C /ps2dev/ps2eth \
git clone git://github.com/ps2dev/ps2-packer.git /tempdir/ps2-packer
make install -C /tempdir/ps2-packer 
rm -rf /tempdir
cd /src && make
