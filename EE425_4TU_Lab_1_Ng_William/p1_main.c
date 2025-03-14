/* ************************************************************************** */

#include "hardware.h"       // Defines hardware IO

int main( void )
{
// load the bits of each switch because it updates whether its on or off, cant just be a random bit

    Hardware_Setup();   // Initialize switches, buttons and LEDs
    ANSELBCLR = 0b0000111000000000;  // ANSB9, ANSB10, ANSB11 = 0

    __asm__ __volatile__(
                    
                    "la $s0, TRISA \n\t"                // Initialize LED port Output
                    "li $t0, 0b0000000000000000  \n\t" 
                    "sw  $t0, 0($s0) \n\t"           
            

                    "la $s0, TRISF \n\t"                // Initialize Switch port Input
                    "li $t0, 0b1111111111111111  \n\t"
                    "sw  $t0, 0($s0) \n\t"             
                     
                    "la $s0, TRISC \n\t"                // Initialize PMOD port Output
                    "li $t0, 0b0000000000000000  \n\t" 
                    "sw  $t0, 0($s0) \n\t"   
            
                    "la $s0, TRISD \n\t"                // Initialize RGB port Output
                    "li $t0, 0b0000000000000000  \n\t" 
                    "sw  $t0, 0($s0) \n\t"   
                    
                        );
            
    while(1)
    {
                    __asm__ __volatile__(
                                                        //Implementing Switches (0-2)
                                                        //Turning on LED(0) with Switch (0)
                    "lw $s0, PORTF \n\t"                //Loads the current states of all the pins from PORTF into register $s0
                    "srl  $s0,$s0,3 \n\t"               //Shifts the current states of the each pin over by three to put the bit corresponding to switch 0 as the least significant bit
                    "li $s1, 0b0000000000000001  \n\t"  //Loads a arbitrary set of binary numbers in register $s1 which will be used for AND operation
                    "and $s0,$s0,$s1 \n\t"              //Takes the AND operation result and stores it in register $s0
                    "add $t0,$zero,$s0 \n\t"            //Takes the updates register $s0 and adds it to a temporary register called $t0

                    "la $s1, LATA \n\t"                 //loads the address of the label LATA into register $s1
                    "sw $t0, 0($s1) \n\t"               //Stores the value of $t0 at the memory location pointed to by the address in $s1
                                                        //Turning on LED(1) with Switch (1)                            
                    "lw $s0, PORTF \n\t"                //Loads the current states of all the pins from PORTF into register $s0
                    "srl  $s0,$s0,4 \n\t"               //Shifts the current states of each pin over 4 bits so the pin corresponding with switch 1 is the same bit position as LED 1 
                    "li $s1, 0b0000000000000010  \n\t"  //Loads a arbitrary set of binary numbers in register $s1 which will be used for AND operation, so the 1 (on) can be placed at the bit of the LED 1
                    "and $s0,$s0,$s1 \n\t"              //takes the AND operation result and stores it in register $s0
                    "add $t0,$zero,$s0 \n\t"            //takes the updated register, $s0, and adds it to a temporary register called $t0
                            
                    "la $s1, LATA \n\t"                 //loads the address of the label LATA into register $s1
                    "sw $t0, 0($s1) \n\t"               //stores the value of $t0 at the memory location pointed to by the address in $s1
                                                        //Turning on LED(2) with Switch (2)                            
                    "lw $s0, PORTF \n\t"                //Loads the current states of all the pins from PORTF into register $s0
                    "srl  $s0,$s0,2 \n\t"               //Shifts the current states of each pin over 2 bits so the pin corresponding with switch 2 is the same bit position as LED 2
                    "li $s1, 0b0000000000000100  \n\t"  //Loads a arbitrary set of binary numbers in register $s1 which will be used for AND operation, so the 1 (on) can be placed at the bit of the LED 2
                    "and $s0,$s0,$s1 \n\t"              //Compares it with register $s1 and stores it back in to register $s0
                    "add $t0,$zero,$s0 \n\t"            //Takes the updated register $s0 and adds it to a temporary register called $t0

                    "la $s1, LATA \n\t"                 //Loads the address of the label LATA into register $s1
                    "sw $t0, 0($s1) \n\t"               //stores the value of $t0 at the memory location pointed to by the address in $s1
                                                        // PMOD with External LED implementation
                    "lw $s0, PORTF \n\t"                //Loads the current states of all the pins from PORTF into register $s0
                    "srl  $s0,$s0,4 \n\t"               //Shifts the bits, so the bit that corresponds to Switch 1 is in the same position as Pin 1 on PMODA
                    "li $s1, 0b0000000000000010  \n\t"  //Loads an arbitrary set of binary numbers in register $s1 which will be used for AND operation.
                    "and $s0,$s0,$s1 \n\t"              //Compares it with register $s1 and stores it back in to register $s0
                    "add $t0,$zero,$s0 \n\t"            //takes the updated register of $s0 and adds stores it to temp register $t0

                    "la $s1, LATC \n\t"                 //loads the address of the label LATC into register $s1
                    "sw $t0, 0($s1) \n\t"               //stores the value of $t0 at the memory location pointed to by the address in $s1
                                                        //RGB implementation
                    "lw $s0, PORTF \n\t"                //Load current states of PORTF into register $s0
                    "srl  $s3,$s0,3 \n\t"               //Shift it by 3 in order to get the bit of Switch 0 to be the least significant bit
                    "li $s1, 0b0000000000000001  \n\t"  //Loads an arbitrary set of binary numbers in register $s1 which will be used for AND operation.
                    "and $s3,$s3,$s1 \n\t"              //Compares it with register $s1 and stores it back in to register 3
                    "sll  $s3,$s3,2 \n\t"               //Take the output which is 0 or 1 back in to the position that corresponds with the rgb led            
                    "add $t0,$zero,$s3 \n\t"            //Takes the updated register of $s3 and adds it to a temp register $t0    

                    "la $s3, LATD \n\t"                 //Loads the address of the label LATD into register $s3
                    "sw $t0, 0($s3) \n\t"               //Stores the value of $t0 at the memory location pointed to by the address in $s3
                     
                    "lw $s0, PORTF \n\t"                //Load current states of PORTF into register $s0
                    "srl  $s3,$s0,5 \n\t"               //Shifts bit by 5 in order to get the bit of switch 1 to the least significant bit
                    "li $s1, 0b0000000000000001  \n\t"  //Loads an arbitrary set of binary numbers in register $s1 which will be used for AND operation. 
                    "and $s3,$s3,$s1 \n\t"              //Compare and store it back in to register 3
                    "sll  $s3,$s3,12 \n\t"              //Take the output which is 0 or 1 back in to the position that corresponds with the green led              
                    "add $t0,$zero,$s3 \n\t"            

                    "la $s3, LATD \n\t"                 //Loads the address of the label LATD into register $s3
                    "sw $t0, 0($s3) \n\t"               //Stores the value of $t0 at the memory location pointed to by the address in $s3                          
                    
                            
                    "lw $s0, PORTF \n\t"                //Load current states of PORTF into register $s0 
                    "srl  $s3,$s0,4 \n\t"               //Shifts the bits by 4 in order to get the bit of switch 2 to the least significant bit
                    "li $s1, 0b0000000000000001  \n\t"  //Loads an arbitrary set of binary numbers in register $s1 that will be used for AND operation on the least significant bit
                    "and $s3,$s3,$s1 \n\t"              //Compares it with register $s1 and stores it back in to register 3
                    "sll  $s3,$s3,3 \n\t"               //Takes the state of the least significant bit of register 3 and shifts it 3 spaces back to the pin of the blue led                
                    "add $t0,$zero,$s3 \n\t"            //Stores the memory of register 3 into a temporary register

                    "la $s3, LATD \n\t"                 // loads the address of the label LATC into register $s3
                    "sw $t0, 0($s3) \n\t"               // stores the value of $t0 at the memory location pointed to by the address in $s3                          
                    );
            
    } /* End while(1) loop */
    return (EXIT_FAILURE);      // Should never reach this statement
}

/* *****************************************************************************
 End of File main_p1c.c
 */
