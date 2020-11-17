
IS_EXTENDED_ROM = false
ifeq ($(IS_EXTENDED_ROM), true)
	DEFINES = -D IS_EXTENDED_ROM
else
	DEFINES =
endif

castlevania3.bin: code/* include/* data/*
	wla-6502 ${DEFINES} -o game.o game.s
	wlalink -s linkfile castlevania3.bin
	rm game.o

nes: castlevania3.bin
	python tools/buildNes.py ${DEFINES}
