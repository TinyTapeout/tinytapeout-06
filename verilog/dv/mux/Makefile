# cocotb setup
export COCOTB_REDUCED_LOG_FMT=1

# When executing the '_gl' rule, force GATES to 'yes'
ifneq ($(filter test_mux_gl,$(MAKECMDGOALS)),)
  GATES := yes
else
  GATES ?= no
endif

export USER_PROJECT_VERILOG := $(abspath ../../../verilog)

SIM           ?= icarus
WAVES         ?= no
TOPLEVEL      ?= test_mux_tb
MODULE        ?= test_mux
TOPLEVEL_LANG ?= verilog
COMPILE_ARGS  += -DMPRJ_IO_PADS=38
COMPILE_ARGS  += -DSIM_$(shell echo $(SIM) | tr a-z A-Z)=1
COMPILE_ARGS  += -DROM_VMEM_PATH=\"../../../tt/rom/rom.vmem\"

# Additional arguments to support Verilator
ifeq ($(SIM),verilator)
  COMPILE_ARGS += $(abspath lint.cfg)
  COMPILE_ARGS += --timescale 1ns/1ps
  COMPILE_ARGS += --timescale-override 1ns/1ps
  COMPILE_ARGS += -Wno-TIMESCALEMOD
  COMPILE_ARGS += -Wno-fatal
  # Verilator can't turn wave capture on and off dynamically, so instead compile
  # a specific variant with capture supported
  ifeq ($(WAVES),yes)
    COMPILE_ARGS += --trace-fst
    SIM_BUILD    := sim_build_waves
  endif
  ifeq ($(GATES),yes)
    $(info ERROR: Cannot perform gate-level simulation with Verilator)
    $(error 1)
  endif
else ifeq ($(SIM),icarus)
  ifeq ($(WAVES),yes)
    PLUSARGS += +WAVE_FILE=test_mux.vcd
  endif
endif

# Alter behaviour between GLS & fast functional sims
ifeq ($(GATES),yes)
  COMPILE_ARGS    += -i -f $(abspath ../../includes/includes.gl.mux_top)
  COMPILE_ARGS    += -DGL_TEST
  COMPILE_ARGS    += -DFUNCTIONAL
  COMPILE_ARGS    += -DSIM
  COMPILE_ARGS    += -DUNIT_DELAY=\#1
  COMPILE_ARGS    += -DUSE_POWER_PINS
  VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v
  VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v
  SIM_BUILD       := sim_build_gates
else
  COMPILE_ARGS    += -f $(abspath ../../includes/includes.rtl.caravel_user_project) -I $(abspath ../../rtl/tt-multiplexer/rtl)
  VERILOG_SOURCES += $(abspath ../../rtl/fast/sky130_fd_sc_hd_fast.v)
endif

# Standard sources
VERILOG_SOURCES += $(abspath test_mux_tb.v)

PYTHON_PATHS += $(abspath .)
export PYTHONPATH := $(subst $(SPACE),:,$(PYTHON_PATHS)):$(PYTHONPATH)

include $(shell cocotb-config --makefiles)/Makefile.sim

# ==============================================================================
# Simulation
# ==============================================================================

.PHONY: test_mux
test_mux: TESTCASE=test_mux,test_rom
test_mux: $(COCOTB_RESULTS_FILE)

.PHONY: test_mux_gl
test_mux_gl: TESTCASE=test_mux,test_rom
test_mux_gl: $(COCOTB_RESULTS_FILE)
