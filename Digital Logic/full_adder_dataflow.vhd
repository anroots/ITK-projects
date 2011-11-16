entity FullAdder is
  port ( a, b, c_in : in bit;
		 s, c_out : out bit );
end FullAdder;
 
architecture dataflow of FullAdder is
begin

  s <= (((not a) and b) or (a and (not b)) -- a + b = 1
		and (not c_in)) -- a + b = 1; c_in = 0
	or	
	(((not a) and b) or (a and (not b)) -- a + b = 0
	and (not c_in)); -- a + b = 0; c_in = 1

  c_out <= (a and b) or (b and c_in); -- Carry out
end dataflow;
