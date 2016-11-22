
NAME=$1

DEMO_DIR=$HOME/devel/vulkan/samples/Vulkan/build
OUTDIR=$HOME/devel/vulkan/pipeline-db/dumpfiles/$NAME
mkdir -p $OUTDIR
_VK_TRACE_PDB_MODE=1 ./vktrace -p $DEMO_DIR/bin/$NAME -w $DEMO_DIR -o $OUTDIR/$NAME.trace
