---------------------------------------------------------------------------------------------------
--
-- Title       : memInst
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : memInst.vhd
-- Generated   : Mon Nov 11 22:15:21 2019
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {memInst} architecture {memInst}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity memInst is
	 port(
		 addr : in STD_LOGIC_VECTOR(63 downto 0);
		 instr : out STD_LOGIC_VECTOR(31 downto 0)
	     );
end memInst;

architecture memInst of memInst is
type memoria is array(0 to 31) of std_logic_vector(31 downto 0);
signal Instrucciones : memoria:=
(
	x"00000000",--@0000 - 00h ------------------
	x"B5000134",--@0004 - 04h CBNZ x20, #9  --x"B4000120",--@0004	- 04h CBZ x0,#9	  -----------	x"B4000100",--@0004	- 04 CBZ x0,#8
	x"8B150288",--@0008	- 08h ADD x8,x20,x21
	x"D600001E",--@0012 - 0Ch BR x30
	
	x"F84002C9",--@0016 - 10h LDUR X9, [x22,#0]		 
	x"F8010268",--@0020	- 14h STUR X8, [x19,#16]
	x"CB1402A9",--@0024 - 18h SUB x9,x21,x20
	x"91002D49",--@0028	- 1Ch ADDI x9,x10,#11
	
	x"D1002149",--@0032	- 20h SUBI x9,x10,#08
	x"F8410276",--@0036	- 24h LDUR X22, [x19,#16]
	x"94000002",--@0040 - 28h BL #2 (2*4)  -------------
	x"14000004", --b #4 - --x"14000002",--@0044 - 2Ch B #2 (2*4)
	
	x"F84402C9",--@0048 - 30h LDUR X9, [x22,#64]
	x"00000000",--@0052 - 34h
	x"00000000",--@0056 - 38h
	x"00000000",--@0060 - 3Ch
	
	x"00000000",--@0064 - 40h
	x"00000000",--@0068 - 44h
	x"00000000",--@0072 - 48h
	x"00000000",--@0076 - 4Ch
	
	x"00000000",--@0080 - 50h
	x"00000000",--@0084 - 54h
	x"00000000",--@0088 - 58h
	x"00000000",--@0092 - 5Ch
	
	x"00000000",--@0096 - 60h
	x"00000000",--@0100 - 64h
	x"00000000",--@0104 - 68h
	x"00000000",--@0108 - 6Ch
	
	x"00000000",--@0112 - 70h
	x"00000000",--@0116 - 74h
	x"00000000",--@0120 - 78h
	x"00000000" --@0124 - 7Ch 
);

begin
	process(addr)
	begin
		instr <= Instrucciones(conv_integer( addr(6 downto 2)));
	end process;
end memInst;
