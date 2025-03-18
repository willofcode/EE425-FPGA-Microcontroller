/* ************************************************************************** */
// William Ng
#include "hardware.h"       // Defines hardware IO

int main( void )
{


    Hardware_Setup();   // Initialize switches, buttons and LEDs
    ANSELBCLR = 0b0000111000000000;  // ANSB9, ANSB10, ANSB11 = 0

    __asm__ __volatile__(
            

                    "la $s0, TRISC \n\t"
                    "li $t0, 0b0000000000000000  \n\t"
                    "sw  $t0, 0($s0) \n\t"
            
                    "la $s0, TRISD \n\t"
                    "li $t0, 0b0000000000000000  \n\t"
                    "sw  $t0, 0($s0) \n\t"            
                     
            
                    "lui $s2, 0x00  \n\t" // 0000 0000 0000 0000 0000
                    "ori $s2, $s2, 0xAFFF  \n\t" //1010 1111 1111 1111

//            12Hz 0xAFFF
//            700Hz 0x00FF 
            
                        );
            
    while(1)
    {
                    __asm__ __volatile__(      
                            
                    //"li $t2, 0xA0000   \n\t" //hold high 1hz
                    //"li $t3, 0xA0000   \n\t" //hold low
                            
//                    "li $t2, 0x850   \n\t" //hold high 84hz / 12.67ms
//                    "li $t3, 0x850   \n\t" //hold low
                            
                      "li $t2, 1000  \n\t" //hold high 84hz / 12.67ms
                      "li $t3, 1000   \n\t" //hold low

//                    // Setup state machine for Two-phase Stepper motor        
//                    "la $t0, LATC \n\t" 
//                            
//                    "DelayLoop: \n\t"       
//                    "li $s1, 0b0000000000001100 \n\t" // Set state 1 pin 1 & 7 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"  
//                    
//                    "li $s1, 0b0000000000000110 \n\t" // Set state 2 pin 1 & 2 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"  
//                    
//                    "li $s1, 0b0000000000010010 \n\t" // Set state 3 pin 2 & 3 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"  
//                            
//                    "li $s1, 0b0000000000011000 \n\t" // Set state 4 pin 3 & 7 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"  
//                            
//                    // Setup state machine for One-phase Stepper motor     
//                    "la $t0, LATC \n\t" 
//                            
//                    "DelayLoop: \n\t" 
//                    "li $s1, 0b0000000000000100 \n\t" // Set state 1 pin 1 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"  
//                            
//                    "li $s1, 0b0000000000000010 \n\t" // Set state 2 pin 2 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter       
//                    "jal Delay \n\t" 
//                            
//                    "li $s1, 0b0000000000010000 \n\t" // Set state 3 pin 3 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"  
//                    
//                    "li $s1, 0b0000000000001000 \n\t" // Set state 4 pin 7 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"
//                                    
//                    "j DelayLoop \n\t" 
                            
                    // Setup state machine for Half-step Unipolar/Bipolar Stepper motor        
                    "la $t0, LATC \n\t" 
                            
                    "DelayLoop: \n\t"       
                    "li $s1, 0b0000000000000100 \n\t" // Set state 1 pin 1 on
                    "sw $s1, 0($t0) \n\t" 
                    "move $t1, $t2 \n\t" // Load delay counter         
                    "jal Delay \n\t"  
                    
                    "li $s1, 0b0000000000000110 \n\t" // Set state 2 pin 1 & 2 on
                    "sw $s1, 0($t0) \n\t" 
                    "move $t1, $t2 \n\t" // Load delay counter         
                    "jal Delay \n\t"  
                    
                    "li $s1, 0b0000000000000010 \n\t" // Set state 3 pin 2 on
                    "sw $s1, 0($t0) \n\t" 
                    "move $t1, $t2 \n\t" // Load delay counter         
                    "jal Delay \n\t"  
                            
                    "li $s1, 0b0000000000010010 \n\t" // Set state 4 pin 2 & 3 on
                    "sw $s1, 0($t0) \n\t" 
                    "move $t1, $t2 \n\t" // Load delay counter         
                    "jal Delay \n\t"  
                            
                    "li $s1, 0b0000000000010000 \n\t" // Set state 5 pin 3 on
                    "sw $s1, 0($t0) \n\t" 
                    "move $t1, $t2 \n\t" // Load delay counter         
                    "jal Delay \n\t"  
                            
                    "li $s1, 0b0000000000011000 \n\t" // Set state 6 pin 3 & 7 on
                    "sw $s1, 0($t0) \n\t" 
                    "move $t1, $t2 \n\t" // Load delay counter       
                    "jal Delay \n\t" 
                            
                    "li $s1, 0b0000000000001000 \n\t" // Set state 7 pin 7 on
                    "sw $s1, 0($t0) \n\t" 
                    "move $t1, $t2 \n\t" // Load delay counter         
                    "jal Delay \n\t"  
                    
                    "li $s1, 0b0000000000001100 \n\t" // Set state 8 pin 1 & 7 on
                    "sw $s1, 0($t0) \n\t" 
                    "move $t1, $t2 \n\t" // Load delay counter         
                    "jal Delay \n\t"
                            
//                    // Counter Clockwise/ Reverse rotation         
//                    "la $t0, LATC \n\t" 
//                            
//                    "DelayLoop: \n\t"
//                    "li $s1, 0b0000000000001100 \n\t" // Set state 8 pin 1 & 7 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"
//                                             
//                    "li $s1, 0b0000000000001000 \n\t" // Set state 7 pin 7 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t" 
//
//                    "li $s1, 0b0000000000011000 \n\t" // Set state 6 pin 3 & 7 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter       
//                    "jal Delay \n\t"
//                                                
//                    "li $s1, 0b0000000000010000 \n\t" // Set state 5 pin 3 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"  
//                            
//                    "li $s1, 0b0000000000010010 \n\t" // Set state 4 pin 2 & 3 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"  
//
//                    "li $s1, 0b0000000000000010 \n\t" // Set state 3 pin 2 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"
//                    
//                    "li $s1, 0b0000000000000110 \n\t" // Set state 2 pin 1 & 2 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t"
//                            
//                    "li $s1, 0b0000000000000100 \n\t" // Set state 1 pin 1 on
//                    "sw $s1, 0($t0) \n\t" 
//                    "move $t1, $t2 \n\t" // Load delay counter         
//                    "jal Delay \n\t" 
                                    
                    "j DelayLoop \n\t" 
                            
                    "Delay: \n\t" 
                    "addi $t1, $t1, -1 \n\t" 
                    "bnez $t1, Delay \n\t" 
                    "jr $ra \n\t" 

                    );

            
    } /* End while(1) loop */
    return (EXIT_FAILURE);      // Should never reach this statement
}

/* *****************************************************************************
 End of File p3_main.c
 */