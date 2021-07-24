#include "main.h"

//shi neng shi zhong 
void clk_enable(void){
    CCM_CCGR1= 0xffffffff;
    CCM_CCGR2= 0xffffffff;
    CCM_CCGR3= 0xffffffff;
    CCM_CCGR4= 0xffffffff;
    CCM_CCGR5= 0xffffffff;
    CCM_CCGR6= 0xffffffff;
}
//chu shi hua led
void led_init(void){
    SW_MUX_GPIO1_IO03= 0x5;     //fu yong wei GPIO1_IO03
    SW_PAD_GPIO1_IO03= 0x10b0;  //she zhi dian qi shuxing 

    //GPIO chu shi hua 
    GPIO1_GDIR= 0x8;
    GPIO1_DR= 0x0;              //open led;
}
void delay_short(volatile unsigned int n){
    while(n--){}
}
void delay(volatile unsigned int n){
    while(n--){
        delay_short(0x7ff);
    }
}
void led_on(void){
    GPIO1_DR &= ~(1<<3); //zhi 0, open led

}
void led_off(void){
    GPIO1_DR |= (1<<3); //zhi 1, close led
}

int main(){
    //chu shi hua LED
    clk_enable();
    led_init();
    while(1){
        led_on();
        delay(500);
        led_off();
        delay(500);
    }     //bu fan hui ,
    return 0;
}