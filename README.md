Xvfb\_patch
===

This is a barebone `Xvfb` with some necessary dependency. If there is anything missing, just check with `ldd Xvfb_patch` and `ldd xkbcomp`, then download the missing libraries into this directory.


## Installation

```bash
# Make sure you have write access to /tmp
bash install.sh
```

The script above assume the X11 related files are located at `/usr/share/X11`. If you happen to have them under `/usr/local/share/X11`, just modify the script accordingly.


## Run

```bash
./Xvfb_patch :1 &
```

Then you may run other programs with `DISPLAY=:1 <your program>`.


## Trivia

`install.sh` will try to make use of `/tmp/default.xkm` and `/tmp/local`. If these two paths has been occupied, you may change the strings in `Xvfb_patch` to something else, this can be done by `< Xvfb_patch sed 's/\/tmp\/local/\/tmp\/darts/g' > Xvfb_patch_new` (`/tmp/local` now becomes `/tmp/darts`). However, you need to make sure the length of these strings remains unchanged; otherwise the binary won't be executable.

