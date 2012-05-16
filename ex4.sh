export DOWNLOAD_TARGET=valgrind;
export DOWNLOAD_VERSION=3.7.0;
export DOWNLOAD_EXT=tar.bz2;
export DOWNLOAD=$DOWNLOAD_TARGET-$DOWNLOAD_VERSION.$DOWNLOAD_EXT;
echo $DOWNLOAD && \
curl -O http://valgrind.org/downloads/$DOWNLOAD && \
md5 $DOWNLOAD && \
tar -vxjf $DOWNLOAD && \
cd $DOWNLOAD_TARGET-$DOWNLOAD_VERSION && \
./configure && \
make && \
sudo make install
