<<<<<<< HEAD
set projDir "C:/Users/1001482/Downloads/mojo-mhp-master/mojo-mhp-master/work/planAhead"
=======
set projDir "C:/Users/HP-PC/Documents/mojo/meh/work/planAhead"
>>>>>>> c98ac4459797c5a4f57e312d9676e6f19fa2ae75
set projName "meh"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
<<<<<<< HEAD
set verilogSources [list "C:/Users/1001482/Downloads/mojo-mhp-master/mojo-mhp-master/work/verilog/mojo_top_0.v" "C:/Users/1001482/Downloads/mojo-mhp-master/mojo-mhp-master/work/verilog/reset_conditioner_1.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/1001482/Downloads/mojo-mhp-master/mojo-mhp-master/constraint/buttons_leds.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
=======
set verilogSources [list "C:/Users/HP-PC/Documents/mojo/meh/work/verilog/mojo_top_0.v" "C:/Users/HP-PC/Documents/mojo/meh/work/verilog/reset_conditioner_1.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/HP-PC/Documents/mojo/meh/constraint/buttons_leds.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
>>>>>>> c98ac4459797c5a4f57e312d9676e6f19fa2ae75
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
