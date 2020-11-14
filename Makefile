
castlevania3.bin: code/* include/*
	wla-6502 -o game.o game.s
	wlalink -s linkfile castlevania3.bin
	rm game.o

nes: castlevania3.bin
	python tools/buildNes.py
