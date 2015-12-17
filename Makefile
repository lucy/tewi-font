bdf = \
	tewi-normal-11.bdf tewi-bold-11.bdf \
	tewi2a-normal-11.bdf tewi2a-bold-11.bdf \
	tewifw-normal-11.bdf tewifw-bold-11.bdf
pcf = $(addprefix out/,$(bdfs:%.bdf=%.pcf.gz))
cache = out/fonts.dir out/fonts.scale
unicode_version = 8.0.0

all: $(pcf) $(cache)

out:
	mkdir out

$(pcf): out/%.pcf.gz: %.bdf
	bdftopcf $< | gzip > $@

out/fonts.scale: $(pcf)
	mkfontscale out

out/fonts.dir: $(pcf) out/fonts.scale
	mkfontdir out
	xset fp rehash
	fc-cache

clean:
	rm -f out/* *.bak

UnicodeData.txt:
	wget http://www.unicode.org/Public/$(unicode_version)/ucd/UnicodeData.txt

.PHONY: all build clean
