DEFINES = -D EXTENDED_RAM

ifdef ROMHACK
	DEFINES += -D IS_EXTENDED_ROM \
		-D INSTANT_CHAR_SWAP \
		-D IMPROVED_CONTROLS_TEST \
		-D SEPARATED_LAMP_GFX \
		-D WEAPON_SWAPPING
endif

castlevania3.bin: code/* include/* data/*
	wla-6502 ${DEFINES} -o game.o game.s
	wlalink -s linkfile castlevania3.bin
	rm game.o

nes: castlevania3.bin
	python tools/buildNes.py ${DEFINES}
