entity FullAdder is
  port ( a, b, c_in : in bit;
		 s, c_out : out bit );
end FullAdder;
 
architecture behave of FullAdder is
begin
  process ( a, b, c_in ) begin
	if  a = '1' and b = '1' then
		if c_in = '1' then
			a <= '1';
			b <= '0';
			c_out <= '1'
		else
			a <= '0';
			b <= '0';
			c_out <= '1';
		end if;
	else
	  o <= b;
	end if;
  end process;
end behave;
