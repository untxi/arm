/* -- Data section */
	.data
	 
	/* Ensure variable is 4-byte aligned */
	.balign 4
	/* Define storage for myvar1 */
	myvar1:
	    /* Contents of myvar1 is just 4 bytes containing value '3' */
	    .word 3
	 
	/* Ensure variable is 4-byte aligned */
	.balign 4
	/* Define storage for myvar2 */
	myvar2:
	    /* Contents of myvar2 is just 4 bytes containing value '4' */
	    .word 0
	 
	/* -- Code section */
	.text
	 
	/* Ensure code is 4 byte aligned */
	.balign 4
	.global main
	main:
	    /* myvar1 alambrada*/
	    ldr r1, addr_of_myvar1 /* r1 ← &myvar1 */
	    ldr r1, [r1]           /* r1 ← *r1 */
	    /* myvar2 dinamica */
	    ldr r2, addr_of_myvar2 /* r2 ← &myvar2 */
	    mov r3, #4             /* r3 ← 4 */
	    str r3, [r2]           /* *r2 ← r3 */
	    ldr r2, [r2]           /* r2 ← *r2 */
	    /* suma */
	    add r0, r1, r2         /* r0 ← r1 + r2 */
	    bx lr
	 
	/* Labels needed to access data */
	addr_of_myvar1 : .word myvar1
	addr_of_myvar2 : .word myvar2
