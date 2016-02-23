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
![tewi2a-medium](https://luz.lu/tewi/tewii-medium-11.png)

### tewii-bold
![tewi2a-bold](https://luz.lu/tewi/tewii-bold-11.png)

# Installation
### Gentoo
[lucy/lucy-overlay](https://github.com/lucy/lucy-overlay)
contains an up-to-date ebuild.

### Arch
Has an [aur package](https://aur.archlinux.org/packages/bdf-tewi-git/).

### X11
```
$ make fontdir
$ xset +fp /path/to/tewi-font/out
```

### Fontconfig
```
$ make
$ ln -s /path/to/tewi-font/out ~/.fonts/tewi
```

# Usage
To build just the standalone variant .bdf files
(for tewii and tewi2a)
run `make var`.

# CJK Fallbacks
mplus, kochi gothic and wqy-bitmapfont are good.
wqy is broken in urxvt.
