![screenshot](https://luz.lu/tewi/tewi-2.png)

## Glyphs
#### tewi-medium
![tewi-medium](https://luz.lu/tewi/tewi-medium.png)

#### tewii-medium
![tewii-medium](https://luz.lu/tewi/tewii-medium.png)

#### tewi2a-medium
![tewi2a-medium](https://luz.lu/tewi/tewi2a-medium.png)

#### tewi-bold
![tewi-bold](https://luz.lu/tewi/tewi-bold.png)

#### tewii-bold
![tewii-bold](https://luz.lu/tewi/tewii-bold.png)

#### tewi2a-bold
![tewi2a-bold](https://luz.lu/tewi/tewi2a-bold.png)

## NOTE
If your distro has a file like `70-no-bitmaps.conf` in
`/etc/fonts/conf.d`, and tewi doesn't work, you should remove it.

## Installation
#### Arch
[AUR package](https://aur.archlinux.org/packages/bdf-tewi-git/)

#### Crux
[6c37/pcf-tewi](https://github.com/6c37/crux-ports)

#### X11
```shell
$ make fontdir
$ xset +fp /path/to/tewi-font/out # you should do this every time X starts
                                  # e.g. put it in your ~/.xinitrc
```

#### Fontconfig
```shell
$ make
$ ln -s /path/to/tewi-font/out ~/.fonts/tewi
$ fc-cache -fv
```

## Building
Just run `make`.

To only build the standalone .bdf files run `make var`.

#### Dependencies
* python 3 (variant generator)
* bdftopcf (.pcf files)

## CJK Fallbacks
mplus, kochi gothic and wqy-bitmapfont are good.
wqy is broken in urxvt.
