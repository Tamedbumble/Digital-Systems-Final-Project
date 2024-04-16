//mb_blink.c
//
//Provided boilerplate "LED Blink" code for ECE 385
//First released in ECE 385, Fall 2023 distribution
//
//Note: you will have to refer to the memory map of your MicroBlaze
//system to find the proper address for the LED GPIO peripheral.
//
//Modified on 7/25/23 Zuofu Cheng

#include <stdio.h>
#include <xparameters.h>
#include <xil_types.h>
#include <sleep.h>

#include "platform.h"

volatile uint16_t* led_gpio_data = XPAR_AXI_GPIO_0_BASEADDR;  //Hint: either find the manual address (via the memory map in the block diagram, or
															 //replace with the proper define in xparameters (part of the BSP). Either way
															 //this is the base address of the GPIO corresponding to your LEDs
															 //(similar to 0xFFFF from MEM2IO from previous labs).
volatile uint16_t* sw_gpio_data = XPAR_AXI_GPIO_1_BASEADDR;
volatile uint32_t* acc = XPAR_AXI_GPIO_2_BASEADDR;
volatile uint16_t* led_gpio_data2 = XPAR_GPIO_3_BASEADDR;
int main()
{
    init_platform();

	while (1)
	{
		int i=0;
		for (i=0; i<100000; i++) if (*acc) break; //wait for stable signal
		if (i<99999) continue;

		if (*led_gpio_data > (uint16_t)(*led_gpio_data+*sw_gpio_data)) // increment led
			printf("Overflow!\r\n");
		*led_gpio_data += (*sw_gpio_data);
		*led_gpio_data2 += (*sw_gpio_data);

		while (!*acc) {} // wait for release
	}

    cleanup_platform();

    return 0;
}
