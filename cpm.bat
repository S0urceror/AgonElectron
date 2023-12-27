init
load /cpm/bios.bin
load -w /cpm/CPM22-ccp-bdos.bin
load /cpm/CPM22-bios.bin
mount -c /cpm/floppy.dsk
run 0x0000
