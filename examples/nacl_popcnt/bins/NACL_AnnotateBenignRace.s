  .text
  .globl NACL_AnnotateBenignRace
  .type NACL_AnnotateBenignRace, @function

#! file-offset 0x420e0
#! rip-offset  0x420e0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotateBenignRace:  #        0x420e0  0      
  popq %r11                #  1     0x420e0  3      
  andl $0xffffffe0, %r11d  #  2     0x420e3  7      
  addq %r15, %r11          #  3     0x420ea  3      
  jmpq %r11                #  4     0x420ed  3      
  nop                      #  5     0x420f0  1      
  nop                      #  6     0x420f1  1      
                                                    
.size NACL_AnnotateBenignRace, .-NACL_AnnotateBenignRace
