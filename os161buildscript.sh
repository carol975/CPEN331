cd ~/os161/src/kern/compile/DUMBVM
echo "Running bmake depend"
bmake depend
echo "Running bmake"
bmake
echo "Running bmake install"
bmake install
cd ~/os161/root

if  [  $1 = "debug" ] || [ $1 = "-w" ]; then
        echo "Running kernel in debug mode"
        sys161 -w kernel
else
        echo "Running kernel in normal mode"
        sys161 kernel
fi
