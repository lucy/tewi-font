![code](http://goput.it/v3ga.png)

Installation
------------
### Arch
Install `bdf-tewi-git` from the [AUR][aur page].
[aur page]: https://aur.archlinux.org/packages/bdf-tewi-git/ "AUR page"
### Others
1. Clone the repo
2. (optional) run `make pcfs` if you want .pcf format fonts
3. Create ~/.fonts if needed
3. Copy or symlink the fonts (*.pcf if you did step 2., *.bdf otherwise) to `~/.fonts` or any subdirectory.
4. Do `fc-cache`

2a Variant
----------
Tewi2a is a variant of tewi with a double story lower case a. It requires
the regular version as a fallback.

Glyphs
------
In normal:

![normal](http://goput.it/4l4v.png)

In bold:

![bold](http://goput.it/k727.png)

Issues/Feedback
---------------
Please report them on the issue tracker or contact me on IRC. Any feedback
is appreciated, but try to avoid making duplicate issues (such as
[#1](https://github.com/neeee/tewi-font/issues/1) and
[#2](https://github.com/neeee/tewi-font/issues/2)).

License
-------
**Tewi is distributed under the GNU GPLv3 with a [font exception][fe].**
[fe]: https://www.gnu.org/licenses/gpl-faq.html#FontException
