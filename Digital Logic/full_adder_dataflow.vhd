entity FullAdder is
  port ( a, b, c_in : in bit;
s, c_out : out bit );
end FullAdder;
 
architecture dataflow of FullAdder is
begin

  s <= (a xor b) xor c_in; -- Sum
  c_out <= ((a xor b) and c_in) or (a and b); -- Carry out
  
end dataflow;