entity FullAdderDataflow is
  port ( a, b, c_in : in bit;
s, c_out : out bit );
end FullAdderDataflow;
 
architecture dataflow of FullAdderDataflow is
begin

  s <= (a xor b) xor c_in; -- Sum
  c_out <= ((a xor b) and c_in) or (a and b); -- Carry out
  
end dataflow;