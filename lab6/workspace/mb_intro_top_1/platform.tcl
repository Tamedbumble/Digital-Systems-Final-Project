# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\neil\385projects\lab6\workspace\mb_intro_top_1\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\neil\385projects\lab6\workspace\mb_intro_top_1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {mb_intro_top_1}\
-hw {C:\Users\neil\385projects\lab6\mb_intro_top.xsa}\
-out {C:/Users/neil/385projects/lab6/workspace}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {mb_intro_top_1}
platform generate -quick
platform generate
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top_new.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top_final.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_accumulator_top.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6/mb_intro_top.xsa}
platform generate -domains 
platform active {mb_intro_top_1}
platform config -updatehw {C:/Users/neil/385projects/lab6hex/lab6/mb_intro_top.xsa}
platform generate -domains 
