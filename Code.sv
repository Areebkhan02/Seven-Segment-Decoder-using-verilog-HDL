// Code your design here
module segment_decoder(D,S);
  //we take the inputs in the vector form 0,1,2,3
  input [3:0] D;
  //The ouput here is taken in the vector form from 0 till 6
  output [6:0] S;
  
  //We will now calculate the output of the 7 simplified boolean algebric equations and assign them to the output S 
  
  assign S[0]= ((~D[3])&(~D[2])&(~D[1])&(D[0]))|((~D[3])&(D[2])&(~D[1])&(~D[0]))|((D[3])&(~D[2])&(D[1])&(D[0]))|((D[3])&(D[2])&(~D[1])&(D[0]));
  
   assign S[1] = (D[2]&D[1]&~D[0]) | (D[3]&D[1]&D[0]) | (D[3]&D[2]&~D[0]) | (~D[3]&D[2]&~D[1]&D[0]);
  
  assign S[2] = (D[3]&D[2]&~D[0]) | (D[3]&D[2]&D[1]) | (~D[3]&~D[2]&D[1]&~D[0]);
  
  assign S[3] = (D[2]&D[1]&D[0]) | (~D[ 3]&~D[2]&~D[1]&D[0]) | (~D[3]&D[2]&~D[1]&~D[0]) | (D[3]&~D[2]&D[1]&~D[0]);
  
  assign S[4] = (~D[3]&D[0]) | (~D[2]&~D[1]&D[0]) | (~D[3]&D[2]&~D[1]);
  
  assign S[5] = (~D[3]&~D[2]&D[0]) | (~D[3]&~D[2]&D[1]) | (~D[3]&D[1]&D[0]) | (D[3]&D[2]&~D[1]&D[0]);
  
  assign S[6] = (~D[3]&~D[2]&~D[1]) | (~D[3]&D[2]&D[1]&D[0]) | (D[3]&D[2]&~D[1]&~D[0]);
 
endmodule
