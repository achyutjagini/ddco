module tb_johnson;

    // Inputs
    reg Clock;
    reg Reset;

    // Outputs
    wire [3:0] Count_out;

    // Instantiate the Unit Under Test (UUT)
    johnson_counter uut (
        .Clock(Clock), 
        .Reset(Reset), 
        .Count_out(Count_out)
    );

    ///////////////////Clock generation ///////////////////////////
    initial Clock = 0;  

    
    //Simulation inputs.
    initial begin $dumpfile("dump.vcd");
      $dumpvars(0,Count_out); 

    //Apply Reset for 50 ns.
        Reset = 1; //Reset is high
        
        #50;       //Wait for 50 ns
        Reset = 0; //Reset is low.
    
end
      
endmodule
