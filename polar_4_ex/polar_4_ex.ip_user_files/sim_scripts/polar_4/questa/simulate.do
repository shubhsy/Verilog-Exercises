onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib polar_4_opt

do {wave.do}

view wave
view structure
view signals

do {polar_4.udo}

run -all

quit -force