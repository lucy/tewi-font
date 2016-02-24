![screenshot](https://luz.lu/tewi/tewi.png)

# Glyphs
### tewi-medium
![tewi-medium](https://luz.lu/tewi/tewi-medium-11.png)

### tewi-bold
![tewi-bold](https://luz.lu/tewi/tewi-bold-11.png)

### tewi2a-medium
![tewi2a-medium](https://luz.lu/tewi/tewi2a-medium-11.png)

### tewi2a-bold
![tewi2a-bold](https://luz.lu/tewi/tewi2a-bold-11.png)

### tewii-medium
![tewii-medium](https://luz.lu/tewi/tewii-medium-11.png)

### tewii-bold
![tewii-bold](https://luz.lu/tewi/tewii-bold-11.png)

### tewfw-medium
![tewifw-medium](https://luz.lu/tewi/tewifw-medium-11.png)

### tewfw-bold
![tewifw-bold](https://luz.lu/tewi/tewifw-bold-11.png)

# Installation
### Gentoo
Up-to-date ebuilds can be found at
[lucy/lucy-overlay](https://github.com/lucy/lucy-overlay).

### Arch
Has an [aur package](https://aur.archlinux.org/packages/bdf-tewi-git/)
(git head only).

### Crux
I don't know how to use this:
[6c37/pcf-tewi](https://github.com/6c37/crux-ports)

### X11
```shell
$ xset +fp /path/to/tewi-font/out # you should do this every time X starts
$ make fontdir
```

### Fontconfig
```shell
$ make
$ ln -s /path/to/tewi-font/out ~/.fonts/tewi
$ fc-cache -fv
```

# Building
Just run `make`.

To build just the standalone variant .bdf files
(for tewii and tewi2a) run `make var`.

### Dependencies
* python (variant generator)
* bdftopcf (.pcf files)

# CJK Fallbacks
mplus, kochi gothic and wqy-bitmapfont are good.
wqy is broken in urxvt.
