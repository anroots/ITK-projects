entity FullAdderDataflowTest is
end FullAdderDataflowTest;
 
architecture bench of FullAdderDataflowTest is
 
  signal a_tb, b_tb, c_in_tb: bit := '0'; -- Ajutised signaalid
  signal s_tb, c_out_tb: bit;
 
  component FullAdderDataflow                    -- Simuleeritava komponendideklaratsioon
    port ( a, b, c_in: in bit;
           s, c_out: out bit );
  end component;

  
  -- Konstandid testimiseks
  constant a_arr: bit_vector (0 to 7) := "00110011";
  constant b_arr: bit_vector (0 to 7) := "01010101";
  constant c_in_arr: bit_vector (0 to 7) := "00001111";

begin    -- Testpingi funktsionaalne kood
 
  process   -- Põhiprotsess
  begin
    for i in a_arr'range loop    -- Itereerime ja simuleerime komponenti
      a_tb <= a_arr(i);
      b_tb <= b_arr(i);
      c_in_tb <= c_in_arr(i);
      wait for 10 ns;
    end loop;
	wait;
  end process;
 
  UUT: FullAdderDataflow port map (a=>a_tb, b=>b_tb, c_in=>c_in_tb, s=> s_tb, c_out=>c_out_tb);    -- Simuleeritava komponenti initsialiseermine
  
end bench;
