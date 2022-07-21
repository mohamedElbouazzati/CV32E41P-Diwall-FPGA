# FPGA benchmarks

```
git submodule update --init --recursive
```

or

```
git submodule init
git submodule update --recursive
```

Set $VIVADO_INSTALL_PATH variable with your Vivado install path.

Launch FPGA performance evaluation

```
source $VIVADO_INSTALL_PATH/Xilinx/Vivado/2020.2/settings64.sh
make all
```

