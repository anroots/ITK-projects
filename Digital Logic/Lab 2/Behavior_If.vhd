entity FullAdderIf is
  port ( a, b, c_in : in bit;
		 s, c_out : out bit );
end FullAdderIf;
 
architecture behave of FullAdderIf is

signal inputs: bit_vector (0 to 2);

begin
  process ( a, b, c_in ) begin
  	
  	inputs <= a & b & c_in;
  	
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