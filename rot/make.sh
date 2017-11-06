#!/bin/sh

set -e

yosys -p "synth_ice40 -blif rot.blif" rot.sv
arachne-pnr -d 1k -P tq144 -p rot.pcf rot.blif -o rot.asc
icepack rot.asc rot.bin
iceprog rot.bin
