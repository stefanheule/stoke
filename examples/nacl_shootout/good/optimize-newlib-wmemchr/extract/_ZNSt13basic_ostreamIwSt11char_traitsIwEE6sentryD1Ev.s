  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEE6sentryD1Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEE6sentryD1Ev, @function

#! file-offset 0xdf400
#! rip-offset  0x9f400
#! capacity    288 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEE6sentryD1Ev:               #        0x9f400  0      OPC=<label>         
  pushq %rbx                                                         #  1     0x9f400  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0x9f401  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                    #  3     0x9f403  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %eax                                        #  4     0x9f405  5      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  5     0x9f40a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                           #  6     0x9f40c  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                    #  7     0x9f410  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                    #  8     0x9f413  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax                                           #  9     0x9f415  4      OPC=addl_r32_m32    
  nop                                                                #  10    0x9f419  1      OPC=nop             
  nop                                                                #  11    0x9f41a  1      OPC=nop             
  nop                                                                #  12    0x9f41b  1      OPC=nop             
  nop                                                                #  13    0x9f41c  1      OPC=nop             
  nop                                                                #  14    0x9f41d  1      OPC=nop             
  nop                                                                #  15    0x9f41e  1      OPC=nop             
  nop                                                                #  16    0x9f41f  1      OPC=nop             
  movl %eax, %eax                                                    #  17    0x9f420  2      OPC=movl_r32_r32    
  testb $0x20, 0xd(%r15,%rax,1)                                      #  18    0x9f422  6      OPC=testb_m8_imm8   
  jne .L_9f460                                                       #  19    0x9f428  2      OPC=jne_label       
  nop                                                                #  20    0x9f42a  1      OPC=nop             
  nop                                                                #  21    0x9f42b  1      OPC=nop             
  nop                                                                #  22    0x9f42c  1      OPC=nop             
  nop                                                                #  23    0x9f42d  1      OPC=nop             
  nop                                                                #  24    0x9f42e  1      OPC=nop             
  nop                                                                #  25    0x9f42f  1      OPC=nop             
  nop                                                                #  26    0x9f430  1      OPC=nop             
  nop                                                                #  27    0x9f431  1      OPC=nop             
  nop                                                                #  28    0x9f432  1      OPC=nop             
  nop                                                                #  29    0x9f433  1      OPC=nop             
  nop                                                                #  30    0x9f434  1      OPC=nop             
  nop                                                                #  31    0x9f435  1      OPC=nop             
  nop                                                                #  32    0x9f436  1      OPC=nop             
  nop                                                                #  33    0x9f437  1      OPC=nop             
  nop                                                                #  34    0x9f438  1      OPC=nop             
  nop                                                                #  35    0x9f439  1      OPC=nop             
  nop                                                                #  36    0x9f43a  1      OPC=nop             
  nop                                                                #  37    0x9f43b  1      OPC=nop             
  nop                                                                #  38    0x9f43c  1      OPC=nop             
  nop                                                                #  39    0x9f43d  1      OPC=nop             
  nop                                                                #  40    0x9f43e  1      OPC=nop             
  nop                                                                #  41    0x9f43f  1      OPC=nop             
.L_9f440:                                                            #        0x9f440  0      OPC=<label>         
  popq %rbx                                                          #  42    0x9f440  1      OPC=popq_r64_1      
  popq %r11                                                          #  43    0x9f441  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  44    0x9f443  7      OPC=andl_r32_imm32  
  nop                                                                #  45    0x9f44a  1      OPC=nop             
  nop                                                                #  46    0x9f44b  1      OPC=nop             
  nop                                                                #  47    0x9f44c  1      OPC=nop             
  nop                                                                #  48    0x9f44d  1      OPC=nop             
  addq %r15, %r11                                                    #  49    0x9f44e  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  50    0x9f451  3      OPC=jmpq_r64        
  nop                                                                #  51    0x9f454  1      OPC=nop             
  nop                                                                #  52    0x9f455  1      OPC=nop             
  nop                                                                #  53    0x9f456  1      OPC=nop             
  nop                                                                #  54    0x9f457  1      OPC=nop             
  nop                                                                #  55    0x9f458  1      OPC=nop             
  nop                                                                #  56    0x9f459  1      OPC=nop             
  nop                                                                #  57    0x9f45a  1      OPC=nop             
  nop                                                                #  58    0x9f45b  1      OPC=nop             
  nop                                                                #  59    0x9f45c  1      OPC=nop             
  nop                                                                #  60    0x9f45d  1      OPC=nop             
  nop                                                                #  61    0x9f45e  1      OPC=nop             
  nop                                                                #  62    0x9f45f  1      OPC=nop             
  nop                                                                #  63    0x9f460  1      OPC=nop             
  nop                                                                #  64    0x9f461  1      OPC=nop             
  nop                                                                #  65    0x9f462  1      OPC=nop             
  nop                                                                #  66    0x9f463  1      OPC=nop             
  nop                                                                #  67    0x9f464  1      OPC=nop             
  nop                                                                #  68    0x9f465  1      OPC=nop             
  nop                                                                #  69    0x9f466  1      OPC=nop             
.L_9f460:                                                            #        0x9f467  0      OPC=<label>         
  nop                                                                #  70    0x9f467  1      OPC=nop             
  nop                                                                #  71    0x9f468  1      OPC=nop             
  nop                                                                #  72    0x9f469  1      OPC=nop             
  nop                                                                #  73    0x9f46a  1      OPC=nop             
  nop                                                                #  74    0x9f46b  1      OPC=nop             
  nop                                                                #  75    0x9f46c  1      OPC=nop             
  nop                                                                #  76    0x9f46d  1      OPC=nop             
  nop                                                                #  77    0x9f46e  1      OPC=nop             
  nop                                                                #  78    0x9f46f  1      OPC=nop             
  nop                                                                #  79    0x9f470  1      OPC=nop             
  nop                                                                #  80    0x9f471  1      OPC=nop             
  nop                                                                #  81    0x9f472  1      OPC=nop             
  nop                                                                #  82    0x9f473  1      OPC=nop             
  nop                                                                #  83    0x9f474  1      OPC=nop             
  nop                                                                #  84    0x9f475  1      OPC=nop             
  nop                                                                #  85    0x9f476  1      OPC=nop             
  nop                                                                #  86    0x9f477  1      OPC=nop             
  nop                                                                #  87    0x9f478  1      OPC=nop             
  nop                                                                #  88    0x9f479  1      OPC=nop             
  nop                                                                #  89    0x9f47a  1      OPC=nop             
  nop                                                                #  90    0x9f47b  1      OPC=nop             
  nop                                                                #  91    0x9f47c  1      OPC=nop             
  nop                                                                #  92    0x9f47d  1      OPC=nop             
  nop                                                                #  93    0x9f47e  1      OPC=nop             
  nop                                                                #  94    0x9f47f  1      OPC=nop             
  nop                                                                #  95    0x9f480  1      OPC=nop             
  nop                                                                #  96    0x9f481  1      OPC=nop             
  callq ._ZSt18uncaught_exceptionv                                   #  97    0x9f482  5      OPC=callq_label     
  testb %al, %al                                                     #  98    0x9f487  2      OPC=testb_r8_r8     
  jne .L_9f440                                                       #  99    0x9f489  2      OPC=jne_label       
  movl %ebx, %ebx                                                    #  100   0x9f48b  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %eax                                        #  101   0x9f48d  5      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  102   0x9f492  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                           #  103   0x9f494  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                    #  104   0x9f498  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                    #  105   0x9f49b  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax                                           #  106   0x9f49d  4      OPC=addl_r32_m32    
  nop                                                                #  107   0x9f4a1  1      OPC=nop             
  nop                                                                #  108   0x9f4a2  1      OPC=nop             
  nop                                                                #  109   0x9f4a3  1      OPC=nop             
  nop                                                                #  110   0x9f4a4  1      OPC=nop             
  nop                                                                #  111   0x9f4a5  1      OPC=nop             
  nop                                                                #  112   0x9f4a6  1      OPC=nop             
  movl %eax, %eax                                                    #  113   0x9f4a7  2      OPC=movl_r32_r32    
  movl 0x7c(%r15,%rax,1), %edi                                       #  114   0x9f4a9  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                   #  115   0x9f4ae  3      OPC=testq_r64_r64   
  je .L_9f440                                                        #  116   0x9f4b1  2      OPC=je_label        
  movl %edi, %edi                                                    #  117   0x9f4b3  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                           #  118   0x9f4b5  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  119   0x9f4b9  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                       #  120   0x9f4bb  5      OPC=movl_r32_m32    
  nop                                                                #  121   0x9f4c0  1      OPC=nop             
  nop                                                                #  122   0x9f4c1  1      OPC=nop             
  nop                                                                #  123   0x9f4c2  1      OPC=nop             
  nop                                                                #  124   0x9f4c3  1      OPC=nop             
  nop                                                                #  125   0x9f4c4  1      OPC=nop             
  nop                                                                #  126   0x9f4c5  1      OPC=nop             
  nop                                                                #  127   0x9f4c6  1      OPC=nop             
  nop                                                                #  128   0x9f4c7  1      OPC=nop             
  nop                                                                #  129   0x9f4c8  1      OPC=nop             
  nop                                                                #  130   0x9f4c9  1      OPC=nop             
  nop                                                                #  131   0x9f4ca  1      OPC=nop             
  nop                                                                #  132   0x9f4cb  1      OPC=nop             
  nop                                                                #  133   0x9f4cc  1      OPC=nop             
  nop                                                                #  134   0x9f4cd  1      OPC=nop             
  nop                                                                #  135   0x9f4ce  1      OPC=nop             
  nop                                                                #  136   0x9f4cf  1      OPC=nop             
  nop                                                                #  137   0x9f4d0  1      OPC=nop             
  nop                                                                #  138   0x9f4d1  1      OPC=nop             
  nop                                                                #  139   0x9f4d2  1      OPC=nop             
  nop                                                                #  140   0x9f4d3  1      OPC=nop             
  nop                                                                #  141   0x9f4d4  1      OPC=nop             
  nop                                                                #  142   0x9f4d5  1      OPC=nop             
  nop                                                                #  143   0x9f4d6  1      OPC=nop             
  nop                                                                #  144   0x9f4d7  1      OPC=nop             
  nop                                                                #  145   0x9f4d8  1      OPC=nop             
  nop                                                                #  146   0x9f4d9  1      OPC=nop             
  nop                                                                #  147   0x9f4da  1      OPC=nop             
  nop                                                                #  148   0x9f4db  1      OPC=nop             
  nop                                                                #  149   0x9f4dc  1      OPC=nop             
  nop                                                                #  150   0x9f4dd  1      OPC=nop             
  nop                                                                #  151   0x9f4de  1      OPC=nop             
  andl $0xffffffe0, %eax                                             #  152   0x9f4df  6      OPC=andl_r32_imm32  
  nop                                                                #  153   0x9f4e5  1      OPC=nop             
  nop                                                                #  154   0x9f4e6  1      OPC=nop             
  nop                                                                #  155   0x9f4e7  1      OPC=nop             
  addq %r15, %rax                                                    #  156   0x9f4e8  3      OPC=addq_r64_r64    
  callq %rax                                                         #  157   0x9f4eb  2      OPC=callq_r64       
  cmpl $0xffffffff, %eax                                             #  158   0x9f4ed  6      OPC=cmpl_r32_imm32  
  nop                                                                #  159   0x9f4f3  1      OPC=nop             
  nop                                                                #  160   0x9f4f4  1      OPC=nop             
  nop                                                                #  161   0x9f4f5  1      OPC=nop             
  jne .L_9f440                                                       #  162   0x9f4f6  6      OPC=jne_label_1     
  movl %ebx, %ebx                                                    #  163   0x9f4fc  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %edi                                        #  164   0x9f4fe  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  165   0x9f503  1      OPC=popq_r64_1      
  movl %edi, %edi                                                    #  166   0x9f504  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                           #  167   0x9f506  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  168   0x9f50a  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  169   0x9f50d  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                           #  170   0x9f50f  4      OPC=addl_r32_m32    
  movl %edi, %edi                                                    #  171   0x9f513  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  172   0x9f515  5      OPC=movl_r32_m32    
  orl $0x1, %esi                                                     #  173   0x9f51a  3      OPC=orl_r32_imm8    
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  174   0x9f51d  5      OPC=jmpq_label_1    
  nop                                                                #  175   0x9f522  1      OPC=nop             
  nop                                                                #  176   0x9f523  1      OPC=nop             
  nop                                                                #  177   0x9f524  1      OPC=nop             
  nop                                                                #  178   0x9f525  1      OPC=nop             
  nop                                                                #  179   0x9f526  1      OPC=nop             
  nop                                                                #  180   0x9f527  1      OPC=nop             
  nop                                                                #  181   0x9f528  1      OPC=nop             
  nop                                                                #  182   0x9f529  1      OPC=nop             
  nop                                                                #  183   0x9f52a  1      OPC=nop             
  nop                                                                #  184   0x9f52b  1      OPC=nop             
  nop                                                                #  185   0x9f52c  1      OPC=nop             
  nop                                                                #  186   0x9f52d  1      OPC=nop             
  nop                                                                #  187   0x9f52e  1      OPC=nop             
  nop                                                                #  188   0x9f52f  1      OPC=nop             
  nop                                                                #  189   0x9f530  1      OPC=nop             
  nop                                                                #  190   0x9f531  1      OPC=nop             
  nop                                                                #  191   0x9f532  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEE6sentryD1Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEE6sentryD1Ev
