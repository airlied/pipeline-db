#! /bin/sh
NAME=$1

VKTRACE_DIR=$HOME/devel/vulkan/VulkanTools/vktrace

DEMO_DIR=$HOME/devel/vulkan/samples/Vulkan/build
OUTDIR=$HOME/devel/vulkan/pipeline-db/tracefiles/$NAME

mkdir -p $OUTDIR
cd $VKTRACE_DIR
_VK_TRACE_PDB_MODE=1 ./vktrace -p $DEMO_DIR/bin/$NAME -w $DEMO_DIR -o $OUTDIR/$NAME.trace
cd -
