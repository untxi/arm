if_eval: 
	/* Assembler that evaluates E and updates the cpsr accordingly */	
bXX else /* Here XX is the appropiate condition */

then_part: 
   /* assembler for S1, the "then" part */
   b end_of_if
   
else:
   /* assembler for S2, the "else" part */
end_of_if:
	bx lr
