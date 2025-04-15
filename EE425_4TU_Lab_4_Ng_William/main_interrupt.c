/* ************************************************************************** */
/** Create a DELAY based on a Timer1 interrupt                                */
/* ************************************************************************** */

/* ************************************************************************** */
/* Section: Included Files                                                    */
#include "config_bits.h"
#include "hardware.h"
#include <plib.h>



int main(void)
{
    // Initialize Basys MX3 IO hardware DO NOT MODIFY
    Hardware_Setup();        
    
    // Enable multi-vector interrupts DO NOT MODIFY
    INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);  // Do only once
    INTEnableInterrupts();   // Do as needed for global interrupt control
    __asm__ __volatile__(
            
            
            
/* ************************************************************************** */         
    /* Begin INITIAL subroutine code */            
            /* begin HARDWARE setup */ 
                // use a register for a rollover parameter
                        "li $s2, 0  \n\t"

                // initialize PORTA and PORTC as output 
                        "la $s0, TRISACLR   \n\t" //  TRISACLR turn 1's into 0's but no effect on 0's where its writing to PORT A (LED)
                        "li $t0, 0b0000000000000011  \n\t" // Initialized LED0 and LED1 ~ hence -> 0x0000 (Output Signal)
                        "sw  $t0, 0($s0) \n\t"        

                        "la $s0, TRISCCLR   \n\t" //  TRISCCLR turn 1's into 0's but no effect on 0's where PORT C handled PMODA
                        "li $t0, 0b0000000000001000  \n\t" // Initialized PMODA pin 7 ~ hence -> 0x0000 (Output Signal)
                        "sw  $t0, 0($s0) \n\t" 

                // output low at pins of PORTA and PORTC   
                        "la $s0, PORTACLR   \n\t" // PORTACLR turn 1's into 0's but no effect on 0's where its reading to PORT A (LED)
                        "li $t0, 0b0000000000000011  \n\t" // initializes the output to 0 i.e. Low 
                        "sw  $t0, 0($s0) \n\t"         

                        "la $s0, PORTCCLR   \n\t" // PORTCCLR turn 1's into 0's but no effect on 0's where its reading to PORT C (PMODA)
                        "li $t0, 0b0000000000001000  \n\t" // Initializes the output to 0 i.e. Low 
                        "sw  $t0, 0($s0) \n\t" 
            /* end HARDWARE setup */ 

            /* begin TIMER1 setup */ 
                // configure Timer1 control register bits
                // NOTE: Bus clock is running at (10 MHz) 
                    //----- Write your code starting here
                    // initialize T1CON ->  table 13.1, p.170, diagram -> p. 169
                        "la $s0, T1CON \n\t"
                        "li $t0, 0b1000000000110000 \n\t" //1:256
                        //"li $t0, 0b1000000000000000 \n\t" //1:1
                        "sw $t0, 0($s0) \n\t"

                // Set Timer1 roll over period to 0.5 sec
                // NOTE: Timer1 clock is running at (bus clock freq.)/prescale -> 
                // Pr1= (BusCLock/prescale)/frequency desired -> table 13.1, p.170, diagram -> p. 169
                    //----- Write your code starting here 
                        "la $s0, PR1 \n\t"
//                        "li $t0, 19531 \n\t" // (10MHz/ 256)/2
                        "li $t0, 0xFFFF \n\t" // Maximum Period
                        "sw $t0, 0($s0) \n\t"
                        
            
            /* end TIMER1 setup */ 
            
            /* begin INTERRUPT setup */
                // enable timer 1 interrupt               
                    //----- Write your code starting here
                    "la $s0, IEC0SET \n\t" // stands for interrupt controller
                    "li $t0, 0x0010 \n\t"  // Bit 4 is Timer1 interrupt enable -> corresponds to timer 1 enable in table 7-1, p. 65
                    "sw $t0, 0($s0) \n\t"
            
            
                // set up the timer interrupt with a priority of 2 
                    //----- Write your code starting here
                    "la $s0, IPC1 \n\t"
                    "li $t0, 0x00000008 \n\t"  // Priority 2 in bits 2-4
                    "sw $t0, 0($s0) \n\t"
            
            
            /* end INTERRUPT setup */
    /* end INITIAL subroutine code */            
/* ************************************************************************** */
                   
            
            
/* ************************************************************************** */            
    /* begin MAIN loop */  
          "MainLoop:  \n\t"       
            
            // inner loop waiting for rollover
                //----- Write your code starting here
                "WaitLoop: \n\t"
                "beq $s2, $zero, WaitLoop \n\t"  // Loop while $s2 == 0
            
            // set rollover parameter in register to value 0            
                    "li $s2, 0  \n\t"

            // toggle pin LED0 to test delay functionality by inspection                               
                    "la $s0, PORTAINV   \n\t"
                    "li $t0, 0b000000000000001  \n\t"
                    "sw  $t0, 0($s0) \n\t" 
 
            // toggle pin RC3 of PORTC to measure delay using oscilloscope                 
                    "la $s0, PORTCINV   \n\t"
                    "li $t0, 0b000000000001000  \n\t"
                    "sw  $t0, 0($s0) \n\t" 
        
           
        "j MainLoop \n\t"
    /* end MAIN loop  */              
/* ************************************************************************** */
              
              
    );            
    return (EXIT_FAILURE);  // System has failed if this line is reached
} 

/*  ********************************************
 * Interrupt service routine (ISR) for TIMER1 interrupt.
 * Used to create a delay.
 * The LED1 is toggled and the variable $s2 is set
 * each time the interrupt is triggered by TIMER1 roll over.
 * The Timer 1 interrupt flag must be reset.
 * *******************************************************/
void __ISR(_TIMER_1_VECTOR, IPL2SOFT) Timer1Handler(void)
{__asm__ __volatile__(
            
        
/* ************************************************************************** */
    /* begin ISR code */ 
        
    // set rollover flag parameter value 1
       "li $s2, 1  \n\t"

    // toggle LED1 to signal interrupt service
       "la $s0, PORTAINV   \n\t"
       "li $t0, 0b0000000000000010  \n\t"
       "sw  $t0, 0($s0) \n\t"         
            
    // clear TIMER1 interrupt FLAG              
        //----- Write your code starting here
        "la $s0, IFS0CLR \n\t"
        "li $t0, 0x0010 \n\t"  // Bit 4 is Timer1 interrupt flag -> table 7-1, p. 64 and table 7-2, p.68
        "sw $t0, 0($s0) \n\t"
        
        
        
    /* end ISR code */ 
/* ************************************************************************** */
        
    );
}
//END OF PROGRAM
