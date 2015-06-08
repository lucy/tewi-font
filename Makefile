BDFS = \
	tewi-normal-11.bdf tewi-bold-11.bdf \
	tewifw-normal-11.bdf tewifw-bold-11.bdf \
	tewi2a-normal-11.bdf tewi2a-bold-11.bdf
PCFS = $(BDFS:%.bdf=%.pcf)
PSFS = $(BDFS:%.bdf=%.psf)
CACHEFILES = fonts.dir fonts.scale

all: pcfs fontcache

pcfs: $(PCFS)
psfs: $(PSFS)
fontcache: $(CACHEFILES)

$(PCFS): %.pcf: %.bdf
	bdftopcf -o $@ $^

$(PSFS): %.psf: %.bdf
	bdf2psf --fb $^ /usr/share/bdf2psf/standard.equivalents \
		/usr/share/bdf2psf/ascii.set 512 $@

$(CACHEFILES): $(PCFS)
	mkfontdir
	mkfontscale
	xset fp rehash

clean:
	rm -f *.pcf $(CACHEFILES) *.bak

.PHONY: all pcfs fontcache build clean
