roms := \
	pokesaturn.gbc \
	pokemars.gbc \
	pokesaturn_debug.gbc \
	pokemars_debug.gbc

rom_obj := \
	audio.o \
	home.o \
	main.o \
	maps.o \
	ram.o \
	text.o \
	gfx/pics.o \
	gfx/sprites.o \
	gfx/tilesets.o

pokesaturn_obj       := $(rom_obj:.o=_saturn.o)
pokemars_obj         := $(rom_obj:.o=_mars.o)
pokesaturn_debug_obj := $(rom_obj:.o=_saturn_debug.o)
pokemars_debug_obj   := $(rom_obj:.o=_mars_debug.o)


### Build tools

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink


### Build targets

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all red blue blue_debug clean tidy compare tools

all: $(roms)
saturn:       pokesaturn.gbc
mars:         pokemars.gbc
saturn_debug: pokesaturn_debug.gbc
mars_debug:   pokemars_debug.gbc

clean: tidy
	find gfx \
	     \( -iname '*.1bpp' \
	        -o -iname '*.2bpp' \
	        -o -iname '*.pic' \) \
	     -delete

tidy:
	$(RM) $(roms) \
	      $(roms:.gbc=.sym) \
	      $(roms:.gbc=.map) \
	      $(pokesaturn_obj) \
	      $(pokemars_obj) \
	      $(pokesaturn_debug_obj) \
	      $(pokemars_debug_obj) \
	      rgbdscheck.o
	$(MAKE) clean -C tools/

compare: $(roms) $(patches)
	@$(SHA1) -c roms.sha1

tools:
	$(MAKE) -C tools/


RGBASMFLAGS = -hL -Q8 -P includes.asm -Weverything -Wnumeric-string=2 -Wtruncation=1
# Create a sym/map for debug purposes if `make` run with `DEBUG=1`
ifeq ($(DEBUG),1)
RGBASMFLAGS += -E
endif

$(pokesaturn_obj):       RGBASMFLAGS += -D _SATURN
$(pokemars_obj):         RGBASMFLAGS += -D _MARS
$(pokesaturn_debug_obj): RGBASMFLAGS += -D _SATURN -D _DEBUG
$(pokemars_debug_obj):   RGBASMFLAGS += -D _MARS -D _DEBUG

%.patch: vc/%.constants.sym %_vc.gbc %.gbc vc/%.patch.template
	tools/make_patch $*_vc.sym $^ $@

rgbdscheck.o: rgbdscheck.asm
	$(RGBASM) -o $@ $<

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tidy tools,$(MAKECMDGOALS)))

$(info $(shell $(MAKE) -C tools))

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
preinclude_deps := includes.asm $(shell tools/scan_includes includes.asm)
define DEP
$1: $2 $$(shell tools/scan_includes $2) $(preinclude_deps) | rgbdscheck.o
	$$(RGBASM) $$(RGBASMFLAGS) -o $$@ $$<
endef

# Dependencies for objects (drop _red and _blue from asm file basenames)
$(foreach obj, $(pokesaturn_obj), $(eval $(call DEP,$(obj),$(obj:_saturn.o=.asm))))
$(foreach obj, $(pokemars_obj), $(eval $(call DEP,$(obj),$(obj:_mars.o=.asm))))
$(foreach obj, $(pokesaturn_debug_obj), $(eval $(call DEP,$(obj),$(obj:_saturn_debug.o=.asm))))
$(foreach obj, $(pokemars_debug_obj), $(eval $(call DEP,$(obj),$(obj:_mars_debug.o=.asm))))

# Dependencies for VC files that need to run scan_includes
%.constants.sym: %.constants.asm $(shell tools/scan_includes %.constants.asm) $(preinclude_deps) | rgbdscheck.o
	$(RGBASM) $(RGBASMFLAGS) $< > $@

endif


%.asm: ;


pokesaturn_pad       = 0x00
pokemars_pad         = 0x00
pokesaturn_debug_pad = 0xff
pokemars_debug_pad   = 0xff

pokesaturn_opt       = -jsv -n 0 -k 01 -l 0x33 -m 0x13 -r 03 -t "MONS SATURN"
pokemars_opt         = -jsv -n 0 -k 01 -l 0x33 -m 0x13 -r 03 -t "MONS MARS"
pokesaturn_debug_opt = -jsv -n 0 -k 01 -l 0x33 -m 0x13 -r 03 -t "SATURN DEBUG"
pokemars_debug_opt   = -jsv -n 0 -k 01 -l 0x33 -m 0x13 -r 03 -t "MARS DEBUG"

%.gbc: $$(%_obj) layout.link
	$(RGBLINK) -p $($*_pad) -d -m $*.map -n $*.sym -l layout.link -o $@ $(filter %.o,$^)
	$(RGBFIX) -p $($*_pad) $($*_opt) $@


### Misc file-specific graphics rules

gfx/battle/move_anim_0.2bpp: tools/gfx += --trim-whitespace
gfx/battle/move_anim_1.2bpp: tools/gfx += --trim-whitespace

gfx/credits/the_end.2bpp: tools/gfx += --interleave --png=$<

gfx/slots/red_slots_1.2bpp: tools/gfx += --trim-whitespace
gfx/slots/blue_slots_1.2bpp: tools/gfx += --trim-whitespace

gfx/tilesets/%.2bpp: tools/gfx += --trim-whitespace
gfx/tilesets/reds_house.2bpp: tools/gfx += --preserve=0x48

gfx/trade/game_boy.2bpp: tools/gfx += --remove-duplicates


### Catch-all graphics rules

%.png: ;

%.2bpp: %.png
	$(RGBGFX) $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)

%.1bpp: %.png
	$(RGBGFX) $(rgbgfx) -d1 -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)

%.pic: %.2bpp
	tools/pkmncompress $< $@
