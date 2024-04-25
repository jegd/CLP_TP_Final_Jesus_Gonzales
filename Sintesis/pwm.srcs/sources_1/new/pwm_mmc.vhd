library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pwm_mmc is
	generic(
		N: natural :=32
	);
	port(
		clk_i: in std_logic
		--rst_i: in std_logic;
		--ena_i: in std_logic;
	 	--freq_i: in std_logic_vector(N-1 downto 0);
		--duty_i: in std_logic_vector(N-1 downto 0);
		--pwm_o: out std_logic
	);
end;
		
architecture pwm_mmc_arq of pwm_mmc is 
-- Parte declarativa
component clk_wiz_0
port
 (
  clk_out1          : out    std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;

COMPONENT vio_0
  PORT (
    clk : IN STD_LOGIC;
    probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe_out3 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;

COMPONENT ila_0

PORT (
	clk : IN STD_LOGIC;
	probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
);
END COMPONENT  ;


	signal clk_gen, locked: std_logic;
	signal duty_vio, freq_vio : std_logic_vector (31 downto 0);
	signal ena_vio, rst_vio, pwm_vio : std_logic_vector (0 downto 0) ;
	signal pwm_ila: std_logic;
--variable count_i: integer range 0 to 16 := 5;
begin

-- Parte descriptiva

vio_inst : vio_0
  PORT MAP (
    clk => clk_gen,
    probe_in0 => pwm_vio,
    probe_out0 => duty_vio,
    probe_out1 => ena_vio,
    probe_out2 => freq_vio,
    probe_out3 => rst_vio
  );
  
pwm_inst: entity work.pwm
          generic map(
              N=> 32
          )
          port map(
          clk_i       => clk_gen,
          rst_i       => rst_vio(0),
          ena_i       => ena_vio(0),
           freq_i     => freq_vio,
          duty_i      => duty_vio,
          pwm_o       => pwm_vio(0)
          );
		
mmc_inst: clk_wiz_0
    port map(
      clk_out1         =>clk_gen,
      locked           =>locked,
      clk_in1          =>clk_i
    );
   -- pwm_vio(0)<=pwm_o;
    ila_inst : ila_0
    PORT MAP (
        clk => clk_gen,     
        probe0 => pwm_vio
    );
		
end;