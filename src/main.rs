#![no_std] 
#![no_main]
#![allow(clippy::empty_loop)]

use core::panic::PanicInfo; // class 46

#[unsafe(no_mangle)]
fn main() {

    loop {}
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! { // never type ( ! ), because don't have control over the return
    loop {}
}
/*
#![no_std] // class 44
fn main() {

    loop {}
}
*/