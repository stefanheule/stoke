  .text
  .globl _ZSt20__throw_domain_errorPKc
  .type _ZSt20__throw_domain_errorPKc, @function

#! file-offset 0x1278e0
#! rip-offset  0xe78e0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZSt20__throw_domain_errorPKc:          #        0xe78e0  0      OPC=<label>         
  pushq %r12                             #  1     0xe78e0  2      OPC=pushq_r64_1     
  movl %edi, %esi                        #  2     0xe78e2  2      OPC=movl_r32_r32    
  pushq %rbx                             #  3     0xe78e4  1      OPC=pushq_r64_1     
  subl $0x28, %esp                       #  4     0xe78e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  5     0xe78e8  3      OPC=addq_r64_r64    
  leal 0x10(%rsp), %ebx                  #  6     0xe78eb  4      OPC=leal_r32_m16    
  leal 0x1f(%rsp), %edx                  #  7     0xe78ef  4      OPC=leal_r32_m16    
  movl %ebx, %edi                        #  8     0xe78f3  2      OPC=movl_r32_r32    
  nop                                    #  9     0xe78f5  1      OPC=nop             
  nop                                    #  10    0xe78f6  1      OPC=nop             
  nop                                    #  11    0xe78f7  1      OPC=nop             
  nop                                    #  12    0xe78f8  1      OPC=nop             
  nop                                    #  13    0xe78f9  1      OPC=nop             
  nop                                    #  14    0xe78fa  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE              #  15    0xe78fb  5      OPC=callq_label     
  movl $0x8, %edi                        #  16    0xe7900  5      OPC=movl_r32_imm32  
  nop                                    #  17    0xe7905  1      OPC=nop             
  nop                                    #  18    0xe7906  1      OPC=nop             
  nop                                    #  19    0xe7907  1      OPC=nop             
  nop                                    #  20    0xe7908  1      OPC=nop             
  nop                                    #  21    0xe7909  1      OPC=nop             
  nop                                    #  22    0xe790a  1      OPC=nop             
  nop                                    #  23    0xe790b  1      OPC=nop             
  nop                                    #  24    0xe790c  1      OPC=nop             
  nop                                    #  25    0xe790d  1      OPC=nop             
  nop                                    #  26    0xe790e  1      OPC=nop             
  nop                                    #  27    0xe790f  1      OPC=nop             
  nop                                    #  28    0xe7910  1      OPC=nop             
  nop                                    #  29    0xe7911  1      OPC=nop             
  nop                                    #  30    0xe7912  1      OPC=nop             
  nop                                    #  31    0xe7913  1      OPC=nop             
  nop                                    #  32    0xe7914  1      OPC=nop             
  nop                                    #  33    0xe7915  1      OPC=nop             
  nop                                    #  34    0xe7916  1      OPC=nop             
  nop                                    #  35    0xe7917  1      OPC=nop             
  nop                                    #  36    0xe7918  1      OPC=nop             
  nop                                    #  37    0xe7919  1      OPC=nop             
  nop                                    #  38    0xe791a  1      OPC=nop             
  callq .__cxa_allocate_exception        #  39    0xe791b  5      OPC=callq_label     
  movl %eax, %r12d                       #  40    0xe7920  3      OPC=movl_r32_r32    
  movl %ebx, %esi                        #  41    0xe7923  2      OPC=movl_r32_r32    
  movl %r12d, %edi                       #  42    0xe7925  3      OPC=movl_r32_r32    
  nop                                    #  43    0xe7928  1      OPC=nop             
  nop                                    #  44    0xe7929  1      OPC=nop             
  nop                                    #  45    0xe792a  1      OPC=nop             
  nop                                    #  46    0xe792b  1      OPC=nop             
  nop                                    #  47    0xe792c  1      OPC=nop             
  nop                                    #  48    0xe792d  1      OPC=nop             
  nop                                    #  49    0xe792e  1      OPC=nop             
  nop                                    #  50    0xe792f  1      OPC=nop             
  nop                                    #  51    0xe7930  1      OPC=nop             
  nop                                    #  52    0xe7931  1      OPC=nop             
  nop                                    #  53    0xe7932  1      OPC=nop             
  nop                                    #  54    0xe7933  1      OPC=nop             
  nop                                    #  55    0xe7934  1      OPC=nop             
  nop                                    #  56    0xe7935  1      OPC=nop             
  nop                                    #  57    0xe7936  1      OPC=nop             
  nop                                    #  58    0xe7937  1      OPC=nop             
  nop                                    #  59    0xe7938  1      OPC=nop             
  nop                                    #  60    0xe7939  1      OPC=nop             
  nop                                    #  61    0xe793a  1      OPC=nop             
  callq ._ZNSt12domain_errorC1ERKSs      #  62    0xe793b  5      OPC=callq_label     
  movl 0x10(%rsp), %edi                  #  63    0xe7940  4      OPC=movl_r32_m32    
  subl $0xc, %edi                        #  64    0xe7944  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %edi                 #  65    0xe7947  6      OPC=cmpl_r32_imm32  
  jne .L_e7980                           #  66    0xe794d  2      OPC=jne_label       
  xchgw %ax, %ax                         #  67    0xe794f  2      OPC=xchgw_ax_r16    
  nop                                    #  68    0xe7951  1      OPC=nop             
  nop                                    #  69    0xe7952  1      OPC=nop             
  nop                                    #  70    0xe7953  1      OPC=nop             
  nop                                    #  71    0xe7954  1      OPC=nop             
  nop                                    #  72    0xe7955  1      OPC=nop             
  nop                                    #  73    0xe7956  1      OPC=nop             
  nop                                    #  74    0xe7957  1      OPC=nop             
  nop                                    #  75    0xe7958  1      OPC=nop             
  nop                                    #  76    0xe7959  1      OPC=nop             
  nop                                    #  77    0xe795a  1      OPC=nop             
  nop                                    #  78    0xe795b  1      OPC=nop             
  nop                                    #  79    0xe795c  1      OPC=nop             
  nop                                    #  80    0xe795d  1      OPC=nop             
  nop                                    #  81    0xe795e  1      OPC=nop             
  nop                                    #  82    0xe795f  1      OPC=nop             
.L_e7960:                                #        0xe7960  0      OPC=<label>         
  movl $0xe6a80, %edx                    #  83    0xe7960  5      OPC=movl_r32_imm32  
  movl $0x1003d814, %esi                 #  84    0xe7965  5      OPC=movl_r32_imm32  
  movl %r12d, %edi                       #  85    0xe796a  3      OPC=movl_r32_r32    
  nop                                    #  86    0xe796d  1      OPC=nop             
  nop                                    #  87    0xe796e  1      OPC=nop             
  nop                                    #  88    0xe796f  1      OPC=nop             
  nop                                    #  89    0xe7970  1      OPC=nop             
  nop                                    #  90    0xe7971  1      OPC=nop             
  nop                                    #  91    0xe7972  1      OPC=nop             
  nop                                    #  92    0xe7973  1      OPC=nop             
  nop                                    #  93    0xe7974  1      OPC=nop             
  nop                                    #  94    0xe7975  1      OPC=nop             
  nop                                    #  95    0xe7976  1      OPC=nop             
  nop                                    #  96    0xe7977  1      OPC=nop             
  nop                                    #  97    0xe7978  1      OPC=nop             
  nop                                    #  98    0xe7979  1      OPC=nop             
  nop                                    #  99    0xe797a  1      OPC=nop             
  callq .__cxa_throw                     #  100   0xe797b  5      OPC=callq_label     
.L_e7980:                                #        0xe7980  0      OPC=<label>         
  movl %edi, %edi                        #  101   0xe7980  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax            #  102   0xe7982  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                  #  103   0xe7987  3      OPC=leal_r32_m16    
  testl %eax, %eax                       #  104   0xe798a  2      OPC=testl_r32_r32   
  movl %edi, %edi                        #  105   0xe798c  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)            #  106   0xe798e  5      OPC=movl_m32_r32    
  jg .L_e7960                            #  107   0xe7993  2      OPC=jg_label        
  leal 0x1e(%rsp), %esi                  #  108   0xe7995  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                         #  109   0xe7999  2      OPC=xchgw_ax_r16    
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  110   0xe799b  5      OPC=callq_label     
  jmpq .L_e7960                          #  111   0xe79a0  2      OPC=jmpq_label      
  nop                                    #  112   0xe79a2  1      OPC=nop             
  nop                                    #  113   0xe79a3  1      OPC=nop             
  nop                                    #  114   0xe79a4  1      OPC=nop             
  nop                                    #  115   0xe79a5  1      OPC=nop             
  nop                                    #  116   0xe79a6  1      OPC=nop             
  nop                                    #  117   0xe79a7  1      OPC=nop             
  nop                                    #  118   0xe79a8  1      OPC=nop             
  nop                                    #  119   0xe79a9  1      OPC=nop             
  nop                                    #  120   0xe79aa  1      OPC=nop             
  nop                                    #  121   0xe79ab  1      OPC=nop             
  nop                                    #  122   0xe79ac  1      OPC=nop             
  nop                                    #  123   0xe79ad  1      OPC=nop             
  nop                                    #  124   0xe79ae  1      OPC=nop             
  nop                                    #  125   0xe79af  1      OPC=nop             
  nop                                    #  126   0xe79b0  1      OPC=nop             
  nop                                    #  127   0xe79b1  1      OPC=nop             
  nop                                    #  128   0xe79b2  1      OPC=nop             
  nop                                    #  129   0xe79b3  1      OPC=nop             
  nop                                    #  130   0xe79b4  1      OPC=nop             
  nop                                    #  131   0xe79b5  1      OPC=nop             
  nop                                    #  132   0xe79b6  1      OPC=nop             
  nop                                    #  133   0xe79b7  1      OPC=nop             
  nop                                    #  134   0xe79b8  1      OPC=nop             
  nop                                    #  135   0xe79b9  1      OPC=nop             
  nop                                    #  136   0xe79ba  1      OPC=nop             
  nop                                    #  137   0xe79bb  1      OPC=nop             
  nop                                    #  138   0xe79bc  1      OPC=nop             
  nop                                    #  139   0xe79bd  1      OPC=nop             
  nop                                    #  140   0xe79be  1      OPC=nop             
  nop                                    #  141   0xe79bf  1      OPC=nop             
  movl %r12d, %edi                       #  142   0xe79c0  3      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                   #  143   0xe79c3  4      OPC=movl_m32_r32    
  nop                                    #  144   0xe79c7  1      OPC=nop             
  nop                                    #  145   0xe79c8  1      OPC=nop             
  nop                                    #  146   0xe79c9  1      OPC=nop             
  nop                                    #  147   0xe79ca  1      OPC=nop             
  nop                                    #  148   0xe79cb  1      OPC=nop             
  nop                                    #  149   0xe79cc  1      OPC=nop             
  nop                                    #  150   0xe79cd  1      OPC=nop             
  nop                                    #  151   0xe79ce  1      OPC=nop             
  nop                                    #  152   0xe79cf  1      OPC=nop             
  nop                                    #  153   0xe79d0  1      OPC=nop             
  nop                                    #  154   0xe79d1  1      OPC=nop             
  nop                                    #  155   0xe79d2  1      OPC=nop             
  nop                                    #  156   0xe79d3  1      OPC=nop             
  nop                                    #  157   0xe79d4  1      OPC=nop             
  nop                                    #  158   0xe79d5  1      OPC=nop             
  nop                                    #  159   0xe79d6  1      OPC=nop             
  nop                                    #  160   0xe79d7  1      OPC=nop             
  nop                                    #  161   0xe79d8  1      OPC=nop             
  nop                                    #  162   0xe79d9  1      OPC=nop             
  nop                                    #  163   0xe79da  1      OPC=nop             
  callq .__cxa_free_exception            #  164   0xe79db  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                   #  165   0xe79e0  4      OPC=movl_r32_m32    
  movl %ebx, %edi                        #  166   0xe79e4  2      OPC=movl_r32_r32    
  movl %eax, %r12d                       #  167   0xe79e6  3      OPC=movl_r32_r32    
  nop                                    #  168   0xe79e9  1      OPC=nop             
  nop                                    #  169   0xe79ea  1      OPC=nop             
  nop                                    #  170   0xe79eb  1      OPC=nop             
  nop                                    #  171   0xe79ec  1      OPC=nop             
  nop                                    #  172   0xe79ed  1      OPC=nop             
  nop                                    #  173   0xe79ee  1      OPC=nop             
  nop                                    #  174   0xe79ef  1      OPC=nop             
  nop                                    #  175   0xe79f0  1      OPC=nop             
  nop                                    #  176   0xe79f1  1      OPC=nop             
  nop                                    #  177   0xe79f2  1      OPC=nop             
  nop                                    #  178   0xe79f3  1      OPC=nop             
  nop                                    #  179   0xe79f4  1      OPC=nop             
  nop                                    #  180   0xe79f5  1      OPC=nop             
  nop                                    #  181   0xe79f6  1      OPC=nop             
  nop                                    #  182   0xe79f7  1      OPC=nop             
  nop                                    #  183   0xe79f8  1      OPC=nop             
  nop                                    #  184   0xe79f9  1      OPC=nop             
  nop                                    #  185   0xe79fa  1      OPC=nop             
  callq ._ZNSsD1Ev                       #  186   0xe79fb  5      OPC=callq_label     
  movl %r12d, %eax                       #  187   0xe7a00  3      OPC=movl_r32_r32    
  nop                                    #  188   0xe7a03  1      OPC=nop             
  nop                                    #  189   0xe7a04  1      OPC=nop             
  nop                                    #  190   0xe7a05  1      OPC=nop             
  nop                                    #  191   0xe7a06  1      OPC=nop             
  nop                                    #  192   0xe7a07  1      OPC=nop             
  nop                                    #  193   0xe7a08  1      OPC=nop             
  nop                                    #  194   0xe7a09  1      OPC=nop             
  nop                                    #  195   0xe7a0a  1      OPC=nop             
  nop                                    #  196   0xe7a0b  1      OPC=nop             
  nop                                    #  197   0xe7a0c  1      OPC=nop             
  nop                                    #  198   0xe7a0d  1      OPC=nop             
  nop                                    #  199   0xe7a0e  1      OPC=nop             
  nop                                    #  200   0xe7a0f  1      OPC=nop             
  nop                                    #  201   0xe7a10  1      OPC=nop             
  nop                                    #  202   0xe7a11  1      OPC=nop             
  nop                                    #  203   0xe7a12  1      OPC=nop             
  nop                                    #  204   0xe7a13  1      OPC=nop             
  nop                                    #  205   0xe7a14  1      OPC=nop             
  nop                                    #  206   0xe7a15  1      OPC=nop             
  nop                                    #  207   0xe7a16  1      OPC=nop             
  nop                                    #  208   0xe7a17  1      OPC=nop             
  nop                                    #  209   0xe7a18  1      OPC=nop             
  nop                                    #  210   0xe7a19  1      OPC=nop             
  nop                                    #  211   0xe7a1a  1      OPC=nop             
  nop                                    #  212   0xe7a1b  1      OPC=nop             
  nop                                    #  213   0xe7a1c  1      OPC=nop             
  nop                                    #  214   0xe7a1d  1      OPC=nop             
  nop                                    #  215   0xe7a1e  1      OPC=nop             
  nop                                    #  216   0xe7a1f  1      OPC=nop             
.L_e7a20:                                #        0xe7a20  0      OPC=<label>         
  movl %eax, %edi                        #  217   0xe7a20  2      OPC=movl_r32_r32    
  nop                                    #  218   0xe7a22  1      OPC=nop             
  nop                                    #  219   0xe7a23  1      OPC=nop             
  nop                                    #  220   0xe7a24  1      OPC=nop             
  nop                                    #  221   0xe7a25  1      OPC=nop             
  nop                                    #  222   0xe7a26  1      OPC=nop             
  nop                                    #  223   0xe7a27  1      OPC=nop             
  nop                                    #  224   0xe7a28  1      OPC=nop             
  nop                                    #  225   0xe7a29  1      OPC=nop             
  nop                                    #  226   0xe7a2a  1      OPC=nop             
  nop                                    #  227   0xe7a2b  1      OPC=nop             
  nop                                    #  228   0xe7a2c  1      OPC=nop             
  nop                                    #  229   0xe7a2d  1      OPC=nop             
  nop                                    #  230   0xe7a2e  1      OPC=nop             
  nop                                    #  231   0xe7a2f  1      OPC=nop             
  nop                                    #  232   0xe7a30  1      OPC=nop             
  nop                                    #  233   0xe7a31  1      OPC=nop             
  nop                                    #  234   0xe7a32  1      OPC=nop             
  nop                                    #  235   0xe7a33  1      OPC=nop             
  nop                                    #  236   0xe7a34  1      OPC=nop             
  nop                                    #  237   0xe7a35  1      OPC=nop             
  nop                                    #  238   0xe7a36  1      OPC=nop             
  nop                                    #  239   0xe7a37  1      OPC=nop             
  nop                                    #  240   0xe7a38  1      OPC=nop             
  nop                                    #  241   0xe7a39  1      OPC=nop             
  nop                                    #  242   0xe7a3a  1      OPC=nop             
  callq ._Unwind_Resume                  #  243   0xe7a3b  5      OPC=callq_label     
  jmpq .L_e7a20                          #  244   0xe7a40  2      OPC=jmpq_label      
  nop                                    #  245   0xe7a42  1      OPC=nop             
  nop                                    #  246   0xe7a43  1      OPC=nop             
  nop                                    #  247   0xe7a44  1      OPC=nop             
  nop                                    #  248   0xe7a45  1      OPC=nop             
  nop                                    #  249   0xe7a46  1      OPC=nop             
  nop                                    #  250   0xe7a47  1      OPC=nop             
  nop                                    #  251   0xe7a48  1      OPC=nop             
  nop                                    #  252   0xe7a49  1      OPC=nop             
  nop                                    #  253   0xe7a4a  1      OPC=nop             
  nop                                    #  254   0xe7a4b  1      OPC=nop             
  nop                                    #  255   0xe7a4c  1      OPC=nop             
  nop                                    #  256   0xe7a4d  1      OPC=nop             
  nop                                    #  257   0xe7a4e  1      OPC=nop             
  nop                                    #  258   0xe7a4f  1      OPC=nop             
  nop                                    #  259   0xe7a50  1      OPC=nop             
  nop                                    #  260   0xe7a51  1      OPC=nop             
  nop                                    #  261   0xe7a52  1      OPC=nop             
  nop                                    #  262   0xe7a53  1      OPC=nop             
  nop                                    #  263   0xe7a54  1      OPC=nop             
  nop                                    #  264   0xe7a55  1      OPC=nop             
  nop                                    #  265   0xe7a56  1      OPC=nop             
  nop                                    #  266   0xe7a57  1      OPC=nop             
  nop                                    #  267   0xe7a58  1      OPC=nop             
  nop                                    #  268   0xe7a59  1      OPC=nop             
  nop                                    #  269   0xe7a5a  1      OPC=nop             
  nop                                    #  270   0xe7a5b  1      OPC=nop             
  nop                                    #  271   0xe7a5c  1      OPC=nop             
  nop                                    #  272   0xe7a5d  1      OPC=nop             
  nop                                    #  273   0xe7a5e  1      OPC=nop             
  nop                                    #  274   0xe7a5f  1      OPC=nop             
  cmpq $0xff, %rdx                       #  275   0xe7a60  4      OPC=cmpq_r64_imm8   
  jne .L_e7a20                           #  276   0xe7a64  2      OPC=jne_label       
  nop                                    #  277   0xe7a66  1      OPC=nop             
  nop                                    #  278   0xe7a67  1      OPC=nop             
  nop                                    #  279   0xe7a68  1      OPC=nop             
  nop                                    #  280   0xe7a69  1      OPC=nop             
  nop                                    #  281   0xe7a6a  1      OPC=nop             
  nop                                    #  282   0xe7a6b  1      OPC=nop             
  nop                                    #  283   0xe7a6c  1      OPC=nop             
  nop                                    #  284   0xe7a6d  1      OPC=nop             
  nop                                    #  285   0xe7a6e  1      OPC=nop             
  nop                                    #  286   0xe7a6f  1      OPC=nop             
  nop                                    #  287   0xe7a70  1      OPC=nop             
  nop                                    #  288   0xe7a71  1      OPC=nop             
  nop                                    #  289   0xe7a72  1      OPC=nop             
  nop                                    #  290   0xe7a73  1      OPC=nop             
  nop                                    #  291   0xe7a74  1      OPC=nop             
  nop                                    #  292   0xe7a75  1      OPC=nop             
  nop                                    #  293   0xe7a76  1      OPC=nop             
  nop                                    #  294   0xe7a77  1      OPC=nop             
  nop                                    #  295   0xe7a78  1      OPC=nop             
  nop                                    #  296   0xe7a79  1      OPC=nop             
  nop                                    #  297   0xe7a7a  1      OPC=nop             
  callq ._ZSt9terminatev                 #  298   0xe7a7b  5      OPC=callq_label     
                                                                                      
.size _ZSt20__throw_domain_errorPKc, .-_ZSt20__throw_domain_errorPKc
