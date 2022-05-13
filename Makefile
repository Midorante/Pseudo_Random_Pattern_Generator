VERILOG = iverilog
TARGET = PRPG.vcd

$(TARGET) : PRPG.vvp
	vvp PRPG.vvp

PRPG.vvp: PRPG_tb.v PRPG.v
	$(VERILOG) -o PRPG.vvp PRPG_tb.v PRPG.v

clean:
	-del $(TARGET)