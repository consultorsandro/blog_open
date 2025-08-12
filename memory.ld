/* Define memory regions */
MEMORY
{
        FLASH (rx)      : ORIGIN = 0X08000000, LENGTH = 256K
        RAM (rwx)       : ORIGIN = 0x20000000, LENGTH = 64k
        /*EEPROM (rwx)    : ORIGIN = 0X80000000, LENGTH = 4K */
        CCMRAM (rwx)    : ORIGIN = 0X10000000, LENGTH = 4K 
        BATTRAM (rw)    : ORIGIN = 0X40024000, LENGTH = 4K //Battery backed RAM
}

SECTIONS
{
.text :
{
        *(.text)
        *(.text.*)
} > FLASH

.rodata :
{
        *(.rodata)
        *(.rodata.*)
}

.data :
{
        *(.data)
        *(.data.*)
} > RAM AT > FLASH

}  