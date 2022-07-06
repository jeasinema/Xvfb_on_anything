echo "[WARNING] LD_LIBRARY_PATH will be set"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PWD
mkdir -p /tmp/local/bin
# you may change it to `/usr/local/share` -- it depends on where X11 locates
ln -s /usr/share /tmp/local/.
ln -s $PWD/xkbcomp /tmp/local/bin/.
ln -s $PWD/default.xkm /tmp/.

echo "Done."
