entity FullAdderSwitch is
  port ( a, b, c_in : in bit;
s, c_out : out bit );
end FullAdderSwitch;
 
architecture behave of FullAdderSwitch is


begin
  process ( a, b, c_in )
  
	variable inputs: bit_vector (2 downto 0);
  
	begin
  
	inputs := a & b & c_in;
  
  	case inputs is 
   	when "001" =>
   		s <= '1';
		c_out <= '0';
	when "010" =>
		s <= '1';
		c_out <= '0';
	when "011" =>
		s <= '0';
		c_out <= '1';
	when "100" =>
		s <= '1';
		c_out <= '0';
	when "101" =>
		s <= '0';
		c_out <= '1';
	when "110" =>
		s <= '0';
		c_out <= '1';
	when "111" =>
		s <= '1';
		c_out <= '1';
	when "000" =>
	s <= '0';
	c_out <= '0';
   end case;
  
  end process;
end behave;