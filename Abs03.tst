//Testing large negative values. If R1 is set to -32768, then -32768 will be stored in R0.
//I assume this is beacuse if we write D=-D, then positive 32768 overflows to -32768, since 32767 is the largest positive number

load Abs.asm,
output-file Abs03.out,
compare-to Abs03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2;

set PC 0,
set RAM[0] 0,  // Set R0
set RAM[1] -32768;  // Set R1
repeat 100 {
  ticktock;    // Run for 100 clock cycles
}
set RAM[1] -32768,  // Restore arguments in case program used them
output;        // Output to file