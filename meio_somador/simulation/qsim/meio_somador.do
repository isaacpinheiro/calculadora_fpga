onerror {quit -f}
vlib work
vlog -work work meio_somador.vo
vlog -work work meio_somador.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.meio_somador_vlg_vec_tst
vcd file -direction meio_somador.msim.vcd
vcd add -internal meio_somador_vlg_vec_tst/*
vcd add -internal meio_somador_vlg_vec_tst/i1/*
add wave /*
run -all
