entity FullAdderTest is
end FullAdderTest;
 
architecture bench of FullAdderTest is
 
  signal a_tb, b_tb, c_in_tb: bit := '0'; -- meie ajutised signaalid
 
  component FullAdder                    -- simuleeritava komponendideklaratsioon
    port ( a, b, c_in: in bit;
           s, c_out: out bit );
  end component;
 
  constant a_arr: bit_vector (0 to 7) := "00110011";
  constant b_arr: bit_vector (0 to 7) := "01010101";
  constant c_in_arr: bit_vector (0 to 7) := "00001111";     -- abikonstandid

begin    -- testpingi funktsionaalne kood
 
  process   -- põhiprotsess
  begin
    for i in a_arr'range loop    -- protsessi seesitereerime abikonstandite väärtused 
      a_tb <= a_arr(i);            -- ning stimuleerime komponenti
      b_tb <= b_arr(i);
      c_in_tb <= c_arr(i);
      wait for 10 ns;
    end loop;
	wait;
  end process;
 
  UUT: FullAdder port map (a=>a_tb, b=>b_tb, c_in=>c_in_tb);    -- simuleeritava komponenti initsialiseermine
 
 
 -- NB! kuna VHDL programmis toimub käskude tätmine paralleelselt, 
 -- siis ei ole vahet, kas kirjutada enne komponenti initsialiseerimise lauset, 
 -- või protsessi lauset.
 
end bench;  -- testpinki lõpp
