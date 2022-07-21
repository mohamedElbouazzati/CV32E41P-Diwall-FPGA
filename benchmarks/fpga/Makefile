VIVADO ?= vivado

all: design_cv32e41p-version1 design_cv32e41p-version2 design_cv32e41p-version3

design_cv32e41p-version1: 
	$(VIVADO) -mode batch -source  scripts/run_design_cv32e41p-version1.tcl

design_cv32e41p-version2: 
	$(VIVADO) -mode batch -source  scripts/run_design_cv32e41p-version2.tcl

design_cv32e41p-version3: 
	$(VIVADO) -mode batch -source  scripts/run_design_cv32e41p-version3.tcl

clean:
	rm *.jou 
	rm *.log
	rm -rf design_output*
