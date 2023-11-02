import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles


segments = [ 63, 6, 91, 79, 102, 109, 125, 7, 127, 111 ]

@cocotb.test()
async def test_my_leaky_neuron(dut):
    dut._log.info("start")

async def test_7seg(dut):
    dut._log.info("start")

