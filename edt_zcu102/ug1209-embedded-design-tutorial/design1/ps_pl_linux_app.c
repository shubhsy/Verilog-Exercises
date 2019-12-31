/*
 * Copyright (c) 2016 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <pthread.h>
#include <string.h>
#include <stdlib.h>
#include <netdb.h>
#include <unistd.h>

#define GPIO_ROOT "/sys/class/gpio"
pthread_t thread;
pthread_t service_thread1,service_thread2;
int nchannel;
void *PL_switch(void);
void *PS_switch(void);
void PL_switch_LED(int);
void PS_switch_LED(int);
static int count=0;

static int get_gpio_value(int gpio_base, int nchannel)
{
	char gpio_val_file[128];
	int val_fd=0;
	int gpio_max;
	char val_str[2];
	int value = 0;
	int c;

	gpio_max = gpio_base + nchannel;

	for(c = gpio_max-1; c >= gpio_base; c--) {
		sprintf(gpio_val_file, "/sys/class/gpio/gpio%d/value",c);
		val_fd=open(gpio_val_file, O_RDWR);
		if (val_fd < 0) {
			fprintf(stderr, "Cannot open GPIO to export %d\n", c);
			return -1;
		}
		read(val_fd, val_str, sizeof(val_str));
		value=atoi(val_str);
		close(val_fd);
	}
	return value;
}

int main()
{
    printf("\nPress SW17 or SW19 on the board\r\n");
    printf("\nSW17 is PL Push Button :: SW19 is PS Push Button\r\n");

    int result = 0;

   system("echo 333 > /sys/class/gpio/export");	//SW15
   system("echo in > /sys/class/gpio/gpio333/direction");
   system("echo 334 > /sys/class/gpio/export");	//SW14
   system("echo in > /sys/class/gpio/gpio334/direction");
   system("echo 335 > /sys/class/gpio/export");	//SW16
   system("echo in > /sys/class/gpio/gpio335/direction");
   system("echo 336 > /sys/class/gpio/export");	//SW17
   system("echo in > /sys/class/gpio/gpio336/direction");
   system("echo 337 > /sys/class/gpio/export");	//SW18
   system("echo in > /sys/class/gpio/gpio337/direction");
   system("echo 360 > /sys/class/gpio/export");	//SW19 - PS switch
   system("echo in > /sys/class/gpio/gpio360/direction");

   system("echo 325 > /sys/class/gpio/export");	//LED0
   system("echo out > /sys/class/gpio/gpio325/direction");
   system("echo 326 > /sys/class/gpio/export");	//LED1
   system("echo out > /sys/class/gpio/gpio326/direction");
   system("echo 327 > /sys/class/gpio/export");	//LED2
   system("echo out > /sys/class/gpio/gpio327/direction");
   system("echo 328 > /sys/class/gpio/export");	//LED3
   system("echo out > /sys/class/gpio/gpio328/direction");
   system("echo 329 > /sys/class/gpio/export");	//LED4
   system("echo out > /sys/class/gpio/gpio329/direction");
   system("echo 330 > /sys/class/gpio/export");	//LED5
   system("echo out > /sys/class/gpio/gpio330/direction");
   system("echo 331 > /sys/class/gpio/export");	//LED6
   system("echo out > /sys/class/gpio/gpio331/direction");
   system("echo 332 > /sys/class/gpio/export");	//LED7
   system("echo out > /sys/class/gpio/gpio332/direction");

   system("echo 0 > /sys/class/gpio/gpio325/value");
   system("echo 0 > /sys/class/gpio/gpio326/value");
   system("echo 0 > /sys/class/gpio/gpio327/value");
   system("echo 0 > /sys/class/gpio/gpio328/value");
   system("echo 0 > /sys/class/gpio/gpio329/value");
   system("echo 0 > /sys/class/gpio/gpio330/value");
   system("echo 0 > /sys/class/gpio/gpio331/value");
   system("echo 0 > /sys/class/gpio/gpio332/value");

   result = pthread_create(&service_thread1, NULL, PL_switch, NULL);
   if(result != 0)
   {
	   fprintf(stderr, "Could not create thread!\n");
	   exit(1);
   }
   result = pthread_create(&service_thread2, NULL, PS_switch, NULL);
   if(result != 0)
   {
	   fprintf(stderr, "Could not create thread!\n");
	   exit(1);
   }
   /*----------------------------------*/
   /*  wait till the threads are done  */
   /*----------------------------------*/

   pthread_join(service_thread1, NULL);
   pthread_join(service_thread2, NULL);

    return 0;
}

void *PL_switch(void)
{
	int gpio_value;
	int pre_value=0;

	while(1)
	{
		gpio_value=get_gpio_value(336, 1);
		if((pre_value!=gpio_value))
		{
			pre_value=gpio_value;
			PL_switch_LED(gpio_value);
		}
	}//while
}

void *PS_switch(void)
{
	int gpio_value;
	int pre_value=0;
	while(1)
	{
		gpio_value=get_gpio_value(360,1);
		if(pre_value!=gpio_value)
		{
			pre_value=gpio_value;
			PS_switch_LED(gpio_value);
		}
	}//while
}

void PL_switch_LED(gpio_value)
{
	if(gpio_value==1)
	{
		printf("\n----PL Button pressed, observe PL LED [0:3]----\n\r");
		if(count==0)
		{
			system("echo 1 > /sys/class/gpio/gpio325/value");
			system("echo 0 > /sys/class/gpio/gpio326/value");
			system("echo 0 > /sys/class/gpio/gpio327/value");
			system("echo 0 > /sys/class/gpio/gpio328/value");
		}
		else if(count==1)
		{
			system("echo 1 > /sys/class/gpio/gpio326/value");
			system("echo 0 > /sys/class/gpio/gpio325/value");
			system("echo 0 > /sys/class/gpio/gpio327/value");
			system("echo 0 > /sys/class/gpio/gpio328/value");
		}
		else if(count==2)
		{
			system("echo 1 > /sys/class/gpio/gpio327/value");
			system("echo 0 > /sys/class/gpio/gpio325/value");
			system("echo 0 > /sys/class/gpio/gpio326/value");
			system("echo 0 > /sys/class/gpio/gpio328/value");
		}
		else if(count==3)
		{
			system("echo 1 > /sys/class/gpio/gpio328/value");
			system("echo 0 > /sys/class/gpio/gpio325/value");
			system("echo 0 > /sys/class/gpio/gpio326/value");
			system("echo 0 > /sys/class/gpio/gpio327/value");
		}
		count++;
		if(count==4)
			count=0;
	}
}

void PS_switch_LED(gpio_value)
{
	if(gpio_value==1)
	{
		printf("\nPS Button pressed, observe PL LED [4:7]\n\r");
		if(count==0)
		{
			system("echo 1 > /sys/class/gpio/gpio329/value");
			system("echo 0 > /sys/class/gpio/gpio330/value");
			system("echo 0 > /sys/class/gpio/gpio331/value");
			system("echo 0 > /sys/class/gpio/gpio332/value");
		}
		else if(count==1)
		{
			system("echo 1 > /sys/class/gpio/gpio330/value");
			system("echo 0 > /sys/class/gpio/gpio329/value");
			system("echo 0 > /sys/class/gpio/gpio331/value");
			system("echo 0 > /sys/class/gpio/gpio332/value");
		}
		else if(count==2)
		{
			system("echo 1 > /sys/class/gpio/gpio331/value");
			system("echo 0 > /sys/class/gpio/gpio329/value");
			system("echo 0 > /sys/class/gpio/gpio330/value");
			system("echo 0 > /sys/class/gpio/gpio332/value");
		}
		else if(count==3)
		{
			system("echo 1 > /sys/class/gpio/gpio332/value");
			system("echo 0 > /sys/class/gpio/gpio329/value");
			system("echo 0 > /sys/class/gpio/gpio330/value");
			system("echo 0 > /sys/class/gpio/gpio331/value");
		}
		count++;
		if(count==4)
			count=0;
	}

}