gcc -I my_dts -E -nostdinc -undef -D__DTS__ -x assembler-with-cpp -o ebaz.dts system-top.dts
dtc -I dts -O dtb -o ebaz.dtb ebaz.dts

