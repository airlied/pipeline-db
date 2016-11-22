#! /bin/sh

VKTRACE_DIR=/home/airlied/devel/vulkan/VulkanTools/vktrace

export RADV_SHADER_STATS=true
export RADV_DUMP_SHADERS=true

for i in `find dumpfiles -name "*.trace"`
do	
    $VKTRACE_DIR/vkreplay -t $i
done    
