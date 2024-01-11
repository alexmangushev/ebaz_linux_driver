# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/alex/Xilinx_prj/ebaz_linux/vitis_workspace/ebaz_linux_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/alex/Xilinx_prj/ebaz_linux/vitis_workspace/ebaz_linux_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ebaz_linux_platform}\
-hw {/home/alex/Xilinx_prj/ebaz_linux/design_top_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/home/alex/Xilinx_prj/ebaz_linux/vitis_workspace}

platform write
platform generate -domains 
platform active {ebaz_linux_platform}
platform generate
platform active {ebaz_linux_platform}
platform active {ebaz_linux_platform}
platform active {ebaz_linux_platform}
platform active {ebaz_linux_platform}
platform generate
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform active {ebaz_linux_platform}
platform active {ebaz_linux_platform}
platform active {ebaz_linux_platform}
platform active {ebaz_linux_platform}
platform config -updatehw {/home/alex/Xilinx_prj/ebaz_linux/design_top_wrapper.xsa}
platform generate
platform config -updatehw {/home/alex/Xilinx_prj/ebaz_linux/design_top_wrapper.xsa}
platform generate -domains 
platform active {ebaz_linux_platform}
platform active {ebaz_linux_platform}
platform generate
