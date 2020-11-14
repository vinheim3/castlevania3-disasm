## Compiling
* Requires `wla-dx` and `python`
* `make nes` will build the ROM, it assumes the directory `original` exists, with CHR ROM, `OR.chr` inside

## Misc
* The helper scripts assume the PRG ROM exists at `original/OR.bin`, though this is just for data extraction atm

## Structure
* Disassembled PRG ROM exists in `code/`
* `include` is RAM defines and some othe helper files like `constants.s` and `macros.s`
* `json` is intermediate data, created by scripts for use in other scrips
* `tools` has the scripts for data extraction, tilemap generating, and in the future, everything else we need to speed up development
