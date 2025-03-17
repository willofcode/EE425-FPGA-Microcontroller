/* ************************************************************************** */
// William Ng
#include "hardware.h"       // Defines hardware IO

int main( void )
{


    Hardware_Setup();   // Initialize switches, buttons and LEDs
    ANSELBCLR = 0b0000111000000000;  // ANSB9, ANSB10, ANSB11 = 0

    __asm__ __volatile__(
            
                    "la $s0, TRISA \n\t"
                    "li $t0, 0b0000000000000000  \n\t" 
                    "sw  $t0, 0($s0) \n\t"           
            
                    "la $s0, TRISB \n\t"
                    "li $t0, 0b0000000000000000  \n\t" 
                    "sw  $t0, 0($s0) \n\t"
            
                    "la $s0, TRISC \n\t"
                    "li $t0, 0b0000000000000000  \n\t"
                    "sw  $t0, 0($s0) \n\t"
            
                    "la $s0, TRISD \n\t"
                    "li $t0, 0b0000000000000000  \n\t"
                    "sw  $t0, 0($s0) \n\t"            
            
                    "la $s0, TRISF \n\t"
                    "li $t0, 0b1111111111111111  \n\t"
                    "sw  $t0, 0($s0) \n\t"             
            
                    "lui $s2, 0x00  \n\t" // 0000 0000 0000 0000 0000
                    "ori $s2, $s2, 0xAFFF  \n\t" //1010 1111 1111 1111

//            12Hz 0xAFFF
//            700Hz 0x00FF 
            
                        );
            
    while(1)
    {
                    __asm__ __volatile__(                                 
                    "li $t2, 0xA0000   \n\t" //hold high 1hz
                    "li $t3, 0xA0000   \n\t" //hold low
                    //"li $t2, 0x280   \n\t" //hold high 1khz
                    //"li $t3, 0x280   \n\t" //hold low
//                    "li $t2, 1152  \n\t" //hold high 1khz 90%
//                    "li $t3, 128  \n\t" //hold low
                    //"li $t2, 128  \n\t" //hold high 1khz 10%
                    //"li $t3, 1152  \n\t" //hold low
//                    "li $t2, 960  \n\t" //hold high 1khz 75%
//                    "li $t3, 320  \n\t" //hold low
                    //"li $t2, 320  \n\t" //hold high 1khz 25%
                    //"li $t3, 960  \n\t" //hold low

                    "la $t0, LATC \n\t" // initialize PMODA pin 3 
                            
                    "CycleLoop: \n\t" 
                    "li $s1, 0b0000000000010000 \n\t" // Set pin to pulse on high 
                    "sw $s1, 0($t0) \n\t"  // storing bit address for pin
                    "move $t1, $t2 \n\t" // Load delay counter 
                    "jal Delay \n\t"  // Jump and link to Delay loop
                     
                    "li $s1, 0b0000000000000000 \n\t" // Set pin to pulse off low 
                    "sw $s1, 0($t0) \n\t" // storing bit address for pin
                    "move $t1, $t3 \n\t" // Load delay counter 
                    "jal Delay \n\t" // Jump and link to Delay lopp
                            
                    "j CycleLoop \n\t" 
                            
                    "Delay: \n\t" // Delay loop function
                    "addi $t1, $t1, -1 \n\t" // incrementation for $t1
                    "bnez $t1, Delay \n\t" // branch implementation to jump to delay when not low
                    "jr $ra \n\t" // return address

                    );

            
    } /* End while(1) loop */
    return (EXIT_FAILURE);      // Should never reach this statement
}

/* *****************************************************************************
 End of File p2_main.c
 */