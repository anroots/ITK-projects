entity FullAdderIf is
  port ( a, b, c_in : in bit;
		 s, c_out : out bit );
end FullAdderIf;
 
architecture behave of FullAdderIf is


begin
  process ( a, b, c_in )
  
  	variable inputs: bit_vector (2 downto 0);
  	
  	begin
  	
	inputs := a & b & c_in;
  	
  	if inputs = "001" then 
  		s <= '1';
		c_out <= '0'; 
	elsif inputs = "010" then 
  		s <= '1';
		c_out <= '0';
	elsif inputs = "011" then 
  		s <= '0';
		c_out <= '1';
	elsif inputs = "100" then 
  		s <= '1';
		c_out <= '0';
	elsif inputs = "101" then 
  		s <= '0';
		c_out <= '1';
	elsif inputs = "110" then 
  		s <= '0';
		c_out <= '1';
	elsif inputs = "111" then 
  		s <= '1';
		c_out <= '1';
  	else 
		s <= '0';
		c_out <= '0';  	
  	end if;
  	
  end process;
end behave;