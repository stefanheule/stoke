  .text
  .globl _ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv
  .type _ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv, @function

#! file-offset 0xb6e00
#! rip-offset  0x76e00
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv:  #        0x76e00  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x76e00  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0x76e02  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                  #  3     0x76e04  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0x76e09  2      OPC=popq_r64_1      
  movl %eax, %eax                              #  5     0x76e0b  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                 #  6     0x76e0d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  7     0x76e12  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x76e19  1      OPC=nop             
  nop                                          #  9     0x76e1a  1      OPC=nop             
  nop                                          #  10    0x76e1b  1      OPC=nop             
  nop                                          #  11    0x76e1c  1      OPC=nop             
  addq %r15, %r11                              #  12    0x76e1d  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x76e20  3      OPC=jmpq_r64        
  nop                                          #  14    0x76e23  1      OPC=nop             
  nop                                          #  15    0x76e24  1      OPC=nop             
  nop                                          #  16    0x76e25  1      OPC=nop             
  nop                                          #  17    0x76e26  1      OPC=nop             
                                                                                            
.size _ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv, .-_ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv
