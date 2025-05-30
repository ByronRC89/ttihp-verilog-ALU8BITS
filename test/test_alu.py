import cocotb
from cocotb.triggers import RisingEdge

@cocotb.test()
async def test_basic(dut):
    dut.io_in.value = 0x21  # a=1, b=2, opcode=0 (suma)
    await RisingEdge(dut.clk)
    assert dut.io_out.value == 0x03