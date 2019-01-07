module A;
endmodule

//@ elab A
//| entity @A () () {
//| }


module B (
    input bit x,
    output bit y,
    inout bit z
);
endmodule

//@ elab B
//| entity @B (i1$ %x, i1$ %z) (i1$ %y, i1$ %z0) {
//|     drv %y 0
//|     drv %z0 0
//| }


module C (
    output bit x = 0,
    output bit y = 1
);
endmodule

//!@ elab C
//!| entity @C () (i1$ %x, i1$ %y) {
//!|     drv %x 0
//!|     drv %y 1
//!| }