bdf = \
	tewi-medium-11.bdf tewi-bold-11.bdf \
	tewi2a-medium-11.bdf tewi2a-bold-11.bdf \
	tewifw-medium-11.bdf tewifw-bold-11.bdf
pcf = $(addprefix out/,$(bdf:%.bdf=%.pcf.gz))
cache = out/fonts.dir out/fonts.scale
unicode_version = 8.0.0

all: $(pcf)

fontdir: $(pcf) $(cache)

out:
	mkdir -p out

$(pcf): out/%.pcf.gz: %.bdf out
	bdftopcf $< | gzip -9 > $@

out/fonts.scale: $(pcf)
	mkfontscale out

out/fonts.dir: $(pcf) out/fonts.scale
	mkfontdir out
	xset fp rehash
	fc-cache

clean:
	rm -rf out *.bak

UnicodeData.txt:
	curl http://www.unicode.org/Public/$(unicode_version)/ucd/UnicodeData.txt > $@

.PHONY: all build clean
