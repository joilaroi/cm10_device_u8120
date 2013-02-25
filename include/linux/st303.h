/*st compass and gs have the same device ID*/
#ifndef ST303_H
#define ST303_H


#define     GPIO_INT1                         19
#define     GPIO_INT2                         20

#define GS_ST_TIMRER (1000*1000000)           /*1000000s*/ 
/*delete some lines*/
#define ST303DLH_I2C_NAME "st_303dlh"
#define ST303DLM_I2C_NAME "st_303dlm"

enum
{
    DEV_ID_NONE = 0,
    DEV_ID_303DLH = 1,
    DEV_ID_303DLM = 2,
};


#endif
