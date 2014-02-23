BDFS = $(wildcard *.bdf)
PCFS = $(BDFS:%.bdf=%.pcf)
CACHEFILES = fonts.dir fonts.scale

all: pcfs fontcache

pcfs: $(PCFS)
fontcache: $(CACHEFILES)

$(PCFS): %.pcf: %.bdf
	bdftopcf -o $@ $^

$(CACHEFILES): $(PCFS)
	mkfontdir
	mkfontscale
	xset fp rehash

clean:
	rm -f *.pcf fonts.dir fonts.scale

.PHONY: all fontcache build clean
