load Computer.hdl,
output-file test1.out,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1 RAM64[19]%D1.7.1;

ROM32K load test1.hack,
set RAM64[16] 21,
set RAM64[17] 5, 
set RAM64[18] 23, 
output;

repeat 10 {
    tick, tock, output;
}

set reset 1,
set RAM64[16] 16,
set RAM64[17] 14, 
set RAM64[18] 10,
set RAM64[19] 0,
tick, tock, output;

set reset 0,

repeat 10 {
    tick, tock, output;
}