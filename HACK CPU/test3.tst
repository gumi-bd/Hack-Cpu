load Computer.hdl,
output-file test3.out,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

ROM32K load test3.hack,  
set RAM64[18] 100,
output;

repeat 1400 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[17] 0,
set RAM64[18] 80,
tick, tock, output;

set reset 0,

repeat 1200 {
    tick, tock, output;
}