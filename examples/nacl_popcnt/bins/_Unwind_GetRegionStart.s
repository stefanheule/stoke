  .text
  .globl _Unwind_GetRegionStart
  .type _Unwind_GetRegionStart, @function

#! file-offset 0x58f60
#! rip-offset  0x58f60
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_GetRegionStart:        #        0x58f60  0      
  popq %r11                     #  1     0x58f60  3      
  movl %edi, %edi               #  2     0x58f63  2      
  movl %edi, %edi               #  3     0x58f65  2      
  movl 0x5c(%r15,%rdi,1), %eax  #  4     0x58f67  5      
  andl $0xffffffe0, %r11d       #  5     0x58f6c  7      
  addq %r15, %r11               #  6     0x58f73  3      
  jmpq %r11                     #  7     0x58f76  3      
  nop                           #  8     0x58f79  1      
                                                         
.size _Unwind_GetRegionStart, .-_Unwind_GetRegionStart
