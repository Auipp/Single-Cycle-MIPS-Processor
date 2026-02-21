library IEEE;
use IEEE.STD_LOGIC_1164.all;

package DmemPackage is
  component dmem is -- data memory
  port(clk, we, re: in STD_LOGIC;
  a, wd: in STD_LOGIC_VECTOR (31 downto 0);
  rd: out STD_LOGIC_VECTOR (31 downto 0));
  end component;
end DmemPackage;

package body DmemPackage is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end DmemPackage;