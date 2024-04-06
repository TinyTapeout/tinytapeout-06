module tt_um_ja1tye_tiny_cpu (VGND,
    VPWR,
    clk,
    ena,
    rst_n,
    ui_in,
    uio_in,
    uio_oe,
    uio_out,
    uo_out);
 input VGND;
 input VPWR;
 input clk;
 input ena;
 input rst_n;
 input [7:0] ui_in;
 input [7:0] uio_in;
 output [7:0] uio_oe;
 output [7:0] uio_out;
 output [7:0] uo_out;

 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire \MCU.ALU.a_in[0] ;
 wire \MCU.ALU.a_in[1] ;
 wire \MCU.ALU.a_in[2] ;
 wire \MCU.ALU.a_in[3] ;
 wire \MCU.ALU.a_in[4] ;
 wire \MCU.ALU.a_in[5] ;
 wire \MCU.ALU.a_in[6] ;
 wire \MCU.ALU.a_in[7] ;
 wire \MCU.ALU.alu_op_in[0] ;
 wire \MCU.ALU.alu_op_in[1] ;
 wire \MCU.ALU.alu_op_in[2] ;
 wire \MCU.ALU.alu_op_in[3] ;
 wire \MCU.ALU.carry_in ;
 wire \MCU.ALU.ovf_in ;
 wire \MCU.ALU.status_in[0] ;
 wire \MCU.ALU.status_in[2] ;
 wire \MCU.CPU_SEQ.imm_type_in[0] ;
 wire \MCU.CPU_SEQ.imm_type_in[1] ;
 wire \MCU.CPU_SEQ.inst_type_in[0] ;
 wire \MCU.CPU_SEQ.inst_type_in[1] ;
 wire \MCU.CPU_SEQ.state[0] ;
 wire \MCU.CPU_SEQ.state[2] ;
 wire \MCU.CPU_SEQ.state[3] ;
 wire \MCU.CPU_SEQ.state[4] ;
 wire \MCU.CPU_SEQ.state[5] ;
 wire \MCU.CPU_SEQ.state[6] ;
 wire \MCU.CPU_SEQ.state[8] ;
 wire \MCU.ID.dst_addr_out[0] ;
 wire \MCU.ID.dst_addr_out[1] ;
 wire \MCU.ID.dst_addr_out[2] ;
 wire \MCU.ID.imm_out[4] ;
 wire \MCU.ID.inst_in[10] ;
 wire \MCU.ID.inst_in[8] ;
 wire \MCU.ID.inst_in[9] ;
 wire \MCU.IR.cond_in ;
 wire \MCU.IR.ir_data_in[0] ;
 wire \MCU.IR.ir_data_in[10] ;
 wire \MCU.IR.ir_data_in[11] ;
 wire \MCU.IR.ir_data_in[12] ;
 wire \MCU.IR.ir_data_in[13] ;
 wire \MCU.IR.ir_data_in[14] ;
 wire \MCU.IR.ir_data_in[15] ;
 wire \MCU.IR.ir_data_in[1] ;
 wire \MCU.IR.ir_data_in[2] ;
 wire \MCU.IR.ir_data_in[3] ;
 wire \MCU.IR.ir_data_in[4] ;
 wire \MCU.IR.ir_data_in[5] ;
 wire \MCU.IR.ir_data_in[6] ;
 wire \MCU.IR.ir_data_in[7] ;
 wire \MCU.IR.ir_data_in[8] ;
 wire \MCU.IR.ir_data_in[9] ;
 wire \MCU.PC.pc_update_en_in ;
 wire \MCU.PC.program_counter[0] ;
 wire \MCU.PC.program_counter[10] ;
 wire \MCU.PC.program_counter[11] ;
 wire \MCU.PC.program_counter[12] ;
 wire \MCU.PC.program_counter[13] ;
 wire \MCU.PC.program_counter[14] ;
 wire \MCU.PC.program_counter[1] ;
 wire \MCU.PC.program_counter[2] ;
 wire \MCU.PC.program_counter[3] ;
 wire \MCU.PC.program_counter[4] ;
 wire \MCU.PC.program_counter[5] ;
 wire \MCU.PC.program_counter[6] ;
 wire \MCU.PC.program_counter[7] ;
 wire \MCU.PC.program_counter[8] ;
 wire \MCU.PC.program_counter[9] ;
 wire \MCU.PERI.busy_flag ;
 wire \MCU.PERI.clock_counter[0] ;
 wire \MCU.PERI.clock_counter[1] ;
 wire \MCU.PERI.clock_counter[2] ;
 wire \MCU.PERI.clock_div[0] ;
 wire \MCU.PERI.clock_div[1] ;
 wire \MCU.PERI.clock_div[2] ;
 wire \MCU.PERI.clock_div[3] ;
 wire \MCU.PERI.cs_out ;
 wire \MCU.PERI.div_val_reg[0] ;
 wire \MCU.PERI.div_val_reg[1] ;
 wire \MCU.PERI.div_val_reg[2] ;
 wire \MCU.PERI.div_val_reg[3] ;
 wire \MCU.PERI.gpio_in_reg[0] ;
 wire \MCU.PERI.gpio_in_reg[1] ;
 wire \MCU.PERI.gpio_in_reg[2] ;
 wire \MCU.PERI.gpio_in_reg[3] ;
 wire \MCU.PERI.gpio_in_sync[0] ;
 wire \MCU.PERI.gpio_in_sync[1] ;
 wire \MCU.PERI.gpio_in_sync[2] ;
 wire \MCU.PERI.gpio_in_sync[3] ;
 wire \MCU.PERI.mosi_out ;
 wire \MCU.PERI.periph_data_out[0] ;
 wire \MCU.PERI.periph_data_out[1] ;
 wire \MCU.PERI.periph_data_out[2] ;
 wire \MCU.PERI.periph_data_out[3] ;
 wire \MCU.PERI.periph_data_out[4] ;
 wire \MCU.PERI.periph_data_out[5] ;
 wire \MCU.PERI.periph_data_out[6] ;
 wire \MCU.PERI.periph_data_out[7] ;
 wire \MCU.PERI.periph_data_valid_out ;
 wire \MCU.PERI.sclk_out ;
 wire \MCU.PERI.shift_reg[0] ;
 wire \MCU.PERI.shift_reg[1] ;
 wire \MCU.PERI.shift_reg[2] ;
 wire \MCU.PERI.shift_reg[3] ;
 wire \MCU.PERI.shift_reg[4] ;
 wire \MCU.PERI.shift_reg[5] ;
 wire \MCU.PERI.shift_reg[6] ;
 wire \MCU.RF.reg_file[0][0] ;
 wire \MCU.RF.reg_file[0][1] ;
 wire \MCU.RF.reg_file[0][2] ;
 wire \MCU.RF.reg_file[0][3] ;
 wire \MCU.RF.reg_file[0][4] ;
 wire \MCU.RF.reg_file[0][5] ;
 wire \MCU.RF.reg_file[0][6] ;
 wire \MCU.RF.reg_file[0][7] ;
 wire \MCU.RF.reg_file[1][0] ;
 wire \MCU.RF.reg_file[1][1] ;
 wire \MCU.RF.reg_file[1][2] ;
 wire \MCU.RF.reg_file[1][3] ;
 wire \MCU.RF.reg_file[1][4] ;
 wire \MCU.RF.reg_file[1][5] ;
 wire \MCU.RF.reg_file[1][6] ;
 wire \MCU.RF.reg_file[1][7] ;
 wire \MCU.RF.reg_file[2][0] ;
 wire \MCU.RF.reg_file[2][1] ;
 wire \MCU.RF.reg_file[2][2] ;
 wire \MCU.RF.reg_file[2][3] ;
 wire \MCU.RF.reg_file[2][4] ;
 wire \MCU.RF.reg_file[2][5] ;
 wire \MCU.RF.reg_file[2][6] ;
 wire \MCU.RF.reg_file[2][7] ;
 wire \MCU.RF.reg_file[3][0] ;
 wire \MCU.RF.reg_file[3][1] ;
 wire \MCU.RF.reg_file[3][2] ;
 wire \MCU.RF.reg_file[3][3] ;
 wire \MCU.RF.reg_file[3][4] ;
 wire \MCU.RF.reg_file[3][5] ;
 wire \MCU.RF.reg_file[3][6] ;
 wire \MCU.RF.reg_file[3][7] ;
 wire \MCU.RF.reg_file[4][0] ;
 wire \MCU.RF.reg_file[4][1] ;
 wire \MCU.RF.reg_file[4][2] ;
 wire \MCU.RF.reg_file[4][3] ;
 wire \MCU.RF.reg_file[4][4] ;
 wire \MCU.RF.reg_file[4][5] ;
 wire \MCU.RF.reg_file[4][6] ;
 wire \MCU.RF.reg_file[4][7] ;
 wire \MCU.RF.reg_file[5][0] ;
 wire \MCU.RF.reg_file[5][1] ;
 wire \MCU.RF.reg_file[5][2] ;
 wire \MCU.RF.reg_file[5][3] ;
 wire \MCU.RF.reg_file[5][4] ;
 wire \MCU.RF.reg_file[5][5] ;
 wire \MCU.RF.reg_file[5][6] ;
 wire \MCU.RF.reg_file[5][7] ;
 wire \MCU.RF.reg_file[6][0] ;
 wire \MCU.RF.reg_file[6][1] ;
 wire \MCU.RF.reg_file[6][2] ;
 wire \MCU.RF.reg_file[6][3] ;
 wire \MCU.RF.reg_file[6][4] ;
 wire \MCU.RF.reg_file[6][5] ;
 wire \MCU.RF.reg_file[6][6] ;
 wire \MCU.RF.reg_file[6][7] ;
 wire \MCU.RF.reg_file[7][0] ;
 wire \MCU.RF.reg_file[7][1] ;
 wire \MCU.RF.reg_file[7][2] ;
 wire \MCU.RF.reg_file[7][3] ;
 wire \MCU.RF.reg_file[7][4] ;
 wire \MCU.RF.reg_file[7][5] ;
 wire \MCU.RF.reg_file[7][6] ;
 wire \MCU.RF.reg_file[7][7] ;
 wire \MCU.SPI_CTRL.addr_reg[0] ;
 wire \MCU.SPI_CTRL.addr_reg[10] ;
 wire \MCU.SPI_CTRL.addr_reg[11] ;
 wire \MCU.SPI_CTRL.addr_reg[12] ;
 wire \MCU.SPI_CTRL.addr_reg[13] ;
 wire \MCU.SPI_CTRL.addr_reg[14] ;
 wire \MCU.SPI_CTRL.addr_reg[15] ;
 wire \MCU.SPI_CTRL.addr_reg[1] ;
 wire \MCU.SPI_CTRL.addr_reg[2] ;
 wire \MCU.SPI_CTRL.addr_reg[3] ;
 wire \MCU.SPI_CTRL.addr_reg[4] ;
 wire \MCU.SPI_CTRL.addr_reg[5] ;
 wire \MCU.SPI_CTRL.addr_reg[6] ;
 wire \MCU.SPI_CTRL.addr_reg[7] ;
 wire \MCU.SPI_CTRL.addr_reg[8] ;
 wire \MCU.SPI_CTRL.addr_reg[9] ;
 wire \MCU.SPI_CTRL.clock_counter[0] ;
 wire \MCU.SPI_CTRL.clock_counter[1] ;
 wire \MCU.SPI_CTRL.clock_counter[2] ;
 wire \MCU.SPI_CTRL.clock_counter[3] ;
 wire \MCU.SPI_CTRL.flash_cs_out ;
 wire \MCU.SPI_CTRL.mem_type[1] ;
 wire \MCU.SPI_CTRL.mem_type[2] ;
 wire \MCU.SPI_CTRL.mem_type[3] ;
 wire \MCU.SPI_CTRL.mosi_out ;
 wire \MCU.SPI_CTRL.psram_cs_out ;
 wire \MCU.SPI_CTRL.sclk_out ;
 wire \MCU.SPI_CTRL.state[0] ;
 wire \MCU.SPI_CTRL.state[1] ;
 wire \MCU.SPI_CTRL.state[2] ;
 wire \MCU.SPI_CTRL.state[3] ;
 wire \MCU.SR.status_write_en_in ;
 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire _0704_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire _0711_;
 wire _0712_;
 wire _0713_;
 wire _0714_;
 wire _0715_;
 wire _0716_;
 wire _0717_;
 wire _0718_;
 wire _0719_;
 wire _0720_;
 wire _0721_;
 wire _0722_;
 wire _0723_;
 wire _0724_;
 wire _0725_;
 wire _0726_;
 wire _0727_;
 wire _0728_;
 wire _0729_;
 wire _0730_;
 wire _0731_;
 wire _0732_;
 wire _0733_;
 wire _0734_;
 wire _0735_;
 wire _0736_;
 wire _0737_;
 wire _0738_;
 wire _0739_;
 wire _0740_;
 wire _0741_;
 wire _0742_;
 wire _0743_;
 wire _0744_;
 wire _0745_;
 wire _0746_;
 wire _0747_;
 wire _0748_;
 wire _0749_;
 wire _0750_;
 wire _0751_;
 wire _0752_;
 wire _0753_;
 wire _0754_;
 wire _0755_;
 wire _0756_;
 wire _0757_;
 wire _0758_;
 wire _0759_;
 wire _0760_;
 wire _0761_;
 wire _0762_;
 wire _0763_;
 wire _0764_;
 wire _0765_;
 wire _0766_;
 wire _0767_;
 wire _0768_;
 wire _0769_;
 wire _0770_;
 wire _0771_;
 wire _0772_;
 wire _0773_;
 wire _0774_;
 wire _0775_;
 wire _0776_;
 wire _0777_;
 wire _0778_;
 wire _0779_;
 wire _0780_;
 wire _0781_;
 wire _0782_;
 wire _0783_;
 wire _0784_;
 wire _0785_;
 wire _0786_;
 wire _0787_;
 wire _0788_;
 wire _0789_;
 wire _0790_;
 wire _0791_;
 wire _0792_;
 wire _0793_;
 wire _0794_;
 wire _0795_;
 wire _0796_;
 wire _0797_;
 wire _0798_;
 wire _0799_;
 wire _0800_;
 wire _0801_;
 wire _0802_;
 wire _0803_;
 wire _0804_;
 wire _0805_;
 wire _0806_;
 wire _0807_;
 wire _0808_;
 wire _0809_;
 wire _0810_;
 wire _0811_;
 wire _0812_;
 wire _0813_;
 wire _0814_;
 wire _0815_;
 wire _0816_;
 wire _0817_;
 wire _0818_;
 wire _0819_;
 wire _0820_;
 wire _0821_;
 wire _0822_;
 wire _0823_;
 wire _0824_;
 wire _0825_;
 wire _0826_;
 wire _0827_;
 wire _0828_;
 wire _0829_;
 wire _0830_;
 wire _0831_;
 wire _0832_;
 wire _0833_;
 wire _0834_;
 wire _0835_;
 wire _0836_;
 wire _0837_;
 wire _0838_;
 wire _0839_;
 wire _0840_;
 wire _0841_;
 wire _0842_;
 wire _0843_;
 wire _0844_;
 wire _0845_;
 wire _0846_;
 wire _0847_;
 wire _0848_;
 wire _0849_;
 wire _0850_;
 wire _0851_;
 wire _0852_;
 wire _0853_;
 wire _0854_;
 wire _0855_;
 wire _0856_;
 wire _0857_;
 wire _0858_;
 wire _0859_;
 wire _0860_;
 wire _0861_;
 wire _0862_;
 wire _0863_;
 wire _0864_;
 wire _0865_;
 wire _0866_;
 wire _0867_;
 wire _0868_;
 wire _0869_;
 wire _0870_;
 wire _0871_;
 wire _0872_;
 wire _0873_;
 wire _0874_;
 wire _0875_;
 wire _0876_;
 wire _0877_;
 wire _0878_;
 wire _0879_;
 wire _0880_;
 wire _0881_;
 wire _0882_;
 wire _0883_;
 wire _0884_;
 wire _0885_;
 wire _0886_;
 wire _0887_;
 wire _0888_;
 wire _0889_;
 wire _0890_;
 wire _0891_;
 wire _0892_;
 wire _0893_;
 wire _0894_;
 wire _0895_;
 wire _0896_;
 wire _0897_;
 wire _0898_;
 wire _0899_;
 wire _0900_;
 wire _0901_;
 wire _0902_;
 wire _0903_;
 wire _0904_;
 wire _0905_;
 wire _0906_;
 wire _0907_;
 wire _0908_;
 wire _0909_;
 wire _0910_;
 wire _0911_;
 wire _0912_;
 wire _0913_;
 wire _0914_;
 wire _0915_;
 wire _0916_;
 wire _0917_;
 wire _0918_;
 wire _0919_;
 wire _0920_;
 wire _0921_;
 wire _0922_;
 wire _0923_;
 wire _0924_;
 wire _0925_;
 wire _0926_;
 wire _0927_;
 wire _0928_;
 wire _0929_;
 wire _0930_;
 wire _0931_;
 wire _0932_;
 wire _0933_;
 wire _0934_;
 wire _0935_;
 wire _0936_;
 wire _0937_;
 wire _0938_;
 wire _0939_;
 wire _0940_;
 wire _0941_;
 wire _0942_;
 wire _0943_;
 wire _0944_;
 wire _0945_;
 wire _0946_;
 wire _0947_;
 wire _0948_;
 wire _0949_;
 wire _0950_;
 wire _0951_;
 wire _0952_;
 wire _0953_;
 wire _0954_;
 wire _0955_;
 wire _0956_;
 wire _0957_;
 wire _0958_;
 wire _0959_;
 wire _0960_;
 wire _0961_;
 wire _0962_;
 wire _0963_;
 wire _0964_;
 wire _0965_;
 wire _0966_;
 wire _0967_;
 wire _0968_;
 wire _0969_;
 wire _0970_;
 wire _0971_;
 wire _0972_;
 wire _0973_;
 wire _0974_;
 wire _0975_;
 wire _0976_;
 wire _0977_;
 wire _0978_;
 wire _0979_;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire clknet_leaf_0_clk;
 wire clknet_leaf_10_clk;
 wire clknet_leaf_11_clk;
 wire clknet_leaf_12_clk;
 wire clknet_leaf_1_clk;
 wire clknet_leaf_2_clk;
 wire clknet_leaf_3_clk;
 wire clknet_leaf_4_clk;
 wire clknet_leaf_5_clk;
 wire clknet_leaf_6_clk;
 wire clknet_leaf_7_clk;
 wire clknet_leaf_8_clk;
 wire clknet_leaf_9_clk;
 wire net1;
 wire net10;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net5;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net6;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net7;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net8;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net9;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;

 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(_0675_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(_0675_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(_0751_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_4 (.DIODE(uio_oe[3]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_5 (.DIODE(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_0_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_0_250 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_0_256 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_275 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_289 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_0_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_10_100 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_8 FILLER_0_10_115 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_10_123 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_10_135 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_10_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_190 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_10_242 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_10_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_288 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_10_297 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_10_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_10_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_10_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_10_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_10_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_11_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_11_130 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_4 FILLER_0_11_142 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_11_146 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_11_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_11_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_11_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_11_218 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_11_228 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_11_237 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_11_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_11_264 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_11_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_11_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_11_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_11_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_11_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_11_98 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_12_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_12_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_12_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_12_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_12_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_12_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_12_268 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_12_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_12_302 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_12_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_12_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_12_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_12_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_12_78 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_13_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_13_122 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_13_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_13_175 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_13_184 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_13_189 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_13_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_13_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_13_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_13_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_13_70 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_13_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_14_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_14_189 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_14_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_14_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_227 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_14_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_264 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_14_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_14_58 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_14_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_14_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_15_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_15_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_15_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_15_165 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_15_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_15_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_15_230 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_15_244 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_15_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_15_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_15_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_15_288 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_15_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_15_302 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_15_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_15_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_15_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_15_76 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_15_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_16_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_16_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_16_184 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_4 FILLER_0_16_206 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_16_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_16_224 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_16_248 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_16_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_16_275 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_16_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_16_300 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_16_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_16_59 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_16_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_16_93 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_17_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_17_107 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_17_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_17_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_17_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_17_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_17_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_17_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_17_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_17_237 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_17_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_17_316 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_17_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_17_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_17_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_17_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_17_61 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_17_67 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_6 FILLER_0_17_79 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_17_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_18_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_18_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_18_15 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_2 FILLER_0_18_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_18_168 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_18_211 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_18_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_18_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_18_3 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_2 FILLER_0_18_301 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_18_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_18_90 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_19_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_19_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_19_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_19_212 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_19_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_19_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_19_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_19_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_19_62 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_1_119 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_1_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_1_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_1_172 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_1_198 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_1_217 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_1_252 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_1_270 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_1_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_1_51 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_1_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_20_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_20_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_20_168 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_20_206 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_20_226 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_20_231 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_20_235 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_20_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_20_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_20_297 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_20_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_20_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_20_318 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_20_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_20_51 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_20_70 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_20_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_21_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_21_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_21_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_21_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_21_179 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_21_209 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_21_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_21_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_21_243 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_21_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_21_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_21_3 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_1 FILLER_0_21_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_21_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_21_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_21_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_21_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_22_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_22_134 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_22_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_22_175 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_22_179 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_22_187 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_22_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_22_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_22_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_22_204 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_ef_sc_hd__decap_12 FILLER_0_22_216 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_4 FILLER_0_22_228 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_22_232 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_22_275 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_22_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_22_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_22_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_22_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_22_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_23_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_23_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_23_145 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_23_160 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_23_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_23_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_23_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_23_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_23_239 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_23_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_23_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_23_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_23_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_23_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_23_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_23_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_23_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_24_101 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_24_107 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_24_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_24_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_24_170 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_24_174 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_24_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_24_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_24_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_24_212 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_24_219 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_24_229 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_24_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_24_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_24_270 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_24_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_24_284 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_24_288 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_24_3 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_1 FILLER_0_24_316 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_24_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_24_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_24_42 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_1 FILLER_0_25_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_25_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_25_165 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_25_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_25_181 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_25_199 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_25_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_25_233 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_25_241 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_25_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_25_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_25_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_25_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_25_314 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_25_318 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_25_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_25_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_25_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_26_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_26_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_26_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_26_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_26_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_26_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_26_203 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_26_216 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_26_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_26_229 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_26_244 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_26_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_26_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_26_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_26_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_26_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_26_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_27_105 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_27_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_27_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_27_152 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_27_174 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_27_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_27_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_27_218 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_27_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_27_242 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_3 FILLER_0_27_264 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_27_272 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_27_303 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_27_308 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_27_316 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_27_329 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_27_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_27_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_27_79 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_28_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_28_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_147 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_28_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_28_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_28_244 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_28_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_28_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_28_271 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_280 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_28_286 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_28_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_28_294 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_28_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_300 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_28_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_28_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_28_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_28_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_28_82 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_28_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_29_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_29_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_29_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_29_185 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_29_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_29_216 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_29_221 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_29_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_29_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_29_274 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_29_284 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_29_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_29_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_29_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_29_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_29_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_29_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_29_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_29_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_29_7 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_29_87 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_2_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_2_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_2_170 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_2_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_2_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_2_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_2_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_2_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_2_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_2_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_30_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_30_135 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_30_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_30_149 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_30_159 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_30_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_30_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_30_214 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_30_232 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_30_247 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_30_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_30_261 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_30_280 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_30_295 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_30_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_30_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_30_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_30_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_30_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_31_118 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_31_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_31_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_31_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_31_174 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_31_200 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_31_204 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_8 FILLER_0_31_216 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_31_234 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_31_252 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_31_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_31_266 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_31_291 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_31_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_31_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_31_325 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_31_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_31_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_31_98 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_32_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_32_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_32_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_32_149 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_32_192 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_32_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_32_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_32_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_32_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_32_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_32_301 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_32_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_32_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_32_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_32_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_32_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_33_100 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_33_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_33_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_33_124 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_33_145 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_2 FILLER_0_33_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_33_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_33_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_33_211 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_33_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_33_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_33_241 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_2 FILLER_0_33_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_33_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_33_260 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_33_297 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_33_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_33_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_33_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_33_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_33_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_33_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_33_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_34_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_135 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_34_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_187 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_34_209 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_217 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_221 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_34_242 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_34_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_259 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_263 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_271 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_34_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_280 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_297 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_34_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_301 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_34_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_34_62 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_34_7 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_34_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_35_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_35_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_35_122 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_35_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_35_154 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_35_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_35_190 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_35_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_35_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_35_237 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_35_246 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_35_254 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_35_265 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_35_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_35_303 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_35_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_35_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_35_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_35_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_35_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_36_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_36_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_36_173 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_36_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_36_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_36_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_36_256 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_36_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_ef_sc_hd__decap_12 FILLER_0_36_3 (.VPWR(VPWR),
    .VGND(VGND),
    .VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_2 FILLER_0_36_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_36_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_36_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_36_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_37_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_37_118 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_37_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_37_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_37_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_37_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_37_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_37_203 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_37_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_37_233 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_37_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_37_311 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_37_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_37_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_37_79 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_38_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_38_117 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_38_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_38_182 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_38_188 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_38_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_38_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_38_205 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_38_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_38_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_38_287 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_38_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_38_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_38_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_3_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_3_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_3_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_3_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_3_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_3_287 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_3_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_3_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_3_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_3_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_3_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_4_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_4_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_4_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_4_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_4_267 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_4_286 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_4_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_4_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_4_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_4_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_4_93 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_125 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_202 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_228 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_5_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_248 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_5_284 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_5_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_5_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_5_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_6_101 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_6_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_6_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_6_256 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_6_266 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_6_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_6_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_6_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_7_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_7_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_7_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_7_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_7_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_7_163 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_7_181 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_7_210 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_7_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_7_242 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_7_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_7_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_7_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_7_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_7_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_7_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_7_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_7_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_7_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_8_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_8_117 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_8_125 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_8_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_8_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_8_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_8_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_8_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_8_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_8_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_8 FILLER_0_8_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_8_326 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_8_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_8_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_9_125 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_4 FILLER_0_9_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_9_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_9_200 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_9_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_9_234 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_9_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_9_269 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_6 FILLER_0_9_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_9_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_9_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_9_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_51 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_58 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_59 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_61 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_62 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_69 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_70 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_76 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_48 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_78 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_79 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_80 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_81 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_82 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_83 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_84 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_85 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_86 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_87 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_88 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_138 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_139 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_140 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_141 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_142 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_143 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_144 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_145 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_146 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_147 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_148 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_149 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_150 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_151 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_152 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_153 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_154 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_155 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_156 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_157 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_158 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_159 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_160 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_161 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_162 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_163 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_164 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_165 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_166 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_167 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_168 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_169 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_170 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_171 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_172 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_173 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_174 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_175 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_176 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_177 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_178 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_179 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_180 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_181 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_182 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_183 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_184 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_185 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_186 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_187 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_188 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_189 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_190 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_191 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_192 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_89 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_90 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_91 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_92 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_93 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_193 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_194 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_195 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_196 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_197 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_198 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_199 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_200 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_201 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_202 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_203 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_204 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_205 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_206 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_207 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_208 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_209 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_210 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_211 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_212 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_213 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_214 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_215 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_216 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_217 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_218 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_219 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_220 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_221 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_222 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_223 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_224 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_225 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_226 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_227 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_228 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_229 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_230 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_231 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_232 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_233 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_234 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_235 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_236 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_237 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_238 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_239 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_240 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_241 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_242 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_243 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_244 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_245 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_246 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_247 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_94 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_95 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_96 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_97 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_98 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_99 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_248 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_249 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_250 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_251 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_252 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_253 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_254 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_255 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_256 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_257 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_258 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_259 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_260 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_261 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_262 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_263 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_264 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_265 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_266 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_267 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_268 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_269 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_270 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_271 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_272 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_273 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_274 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_275 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_276 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_277 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_278 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_279 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_280 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_281 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_282 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_283 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_284 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_285 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_286 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_287 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_288 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_289 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_290 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_291 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_292 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_293 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_294 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_295 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_296 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_297 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_298 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_299 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_300 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_301 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_302 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_100 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_101 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_102 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_103 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_104 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_105 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_106 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_107 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_108 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_109 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_110 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_111 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_112 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_113 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_114 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_115 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_116 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_117 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_118 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_119 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_120 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_121 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_122 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_123 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_124 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_125 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_126 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_127 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_128 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_129 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_130 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_131 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_132 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_133 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_134 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_135 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_136 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_137 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__or2_2 _0980_ (.A(\MCU.SPI_CTRL.state[0] ),
    .B(\MCU.SPI_CTRL.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0495_));
 sky130_fd_sc_hd__or3_4 _0981_ (.A(\MCU.SPI_CTRL.state[3] ),
    .B(\MCU.SPI_CTRL.state[2] ),
    .C(_0495_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0496_));
 sky130_fd_sc_hd__buf_4 _0982_ (.A(\MCU.CPU_SEQ.state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0497_));
 sky130_fd_sc_hd__mux2_1 _0983_ (.A0(\MCU.ID.dst_addr_out[0] ),
    .A1(\MCU.PC.program_counter[12] ),
    .S(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0498_));
 sky130_fd_sc_hd__mux2_1 _0984_ (.A0(\MCU.ID.dst_addr_out[1] ),
    .A1(\MCU.PC.program_counter[13] ),
    .S(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0499_));
 sky130_fd_sc_hd__mux2_1 _0985_ (.A0(\MCU.ID.dst_addr_out[2] ),
    .A1(\MCU.PC.program_counter[14] ),
    .S(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0500_));
 sky130_fd_sc_hd__mux2_1 _0986_ (.A0(\MCU.ID.imm_out[4] ),
    .A1(\MCU.PC.program_counter[11] ),
    .S(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0501_));
 sky130_fd_sc_hd__nand4_4 _0987_ (.A(_0498_),
    .B(_0499_),
    .C(_0500_),
    .D(_0501_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0502_));
 sky130_fd_sc_hd__or2_1 _0988_ (.A(\MCU.CPU_SEQ.state[2] ),
    .B(\MCU.CPU_SEQ.state[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0503_));
 sky130_fd_sc_hd__a21oi_1 _0989_ (.A1(_0502_),
    .A2(_0503_),
    .B1(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0504_));
 sky130_fd_sc_hd__nor2_2 _0990_ (.A(_0496_),
    .B(_0504_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0505_));
 sky130_fd_sc_hd__and2_1 _0991_ (.A(net1),
    .B(_0505_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0506_));
 sky130_fd_sc_hd__clkbuf_4 _0992_ (.A(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0507_));
 sky130_fd_sc_hd__buf_4 _0993_ (.A(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0508_));
 sky130_fd_sc_hd__mux2_1 _0994_ (.A0(\MCU.SPI_CTRL.mem_type[1] ),
    .A1(\MCU.CPU_SEQ.state[2] ),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0509_));
 sky130_fd_sc_hd__clkbuf_1 _0995_ (.A(_0509_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0009_));
 sky130_fd_sc_hd__clkbuf_4 _0996_ (.A(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0510_));
 sky130_fd_sc_hd__inv_2 _0997_ (.A(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0511_));
 sky130_fd_sc_hd__buf_2 _0998_ (.A(\MCU.SPI_CTRL.state[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0512_));
 sky130_fd_sc_hd__buf_2 _0999_ (.A(\MCU.SPI_CTRL.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0513_));
 sky130_fd_sc_hd__nor3_2 _1000_ (.A(_0512_),
    .B(_0513_),
    .C(_0495_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0514_));
 sky130_fd_sc_hd__nor2_2 _1001_ (.A(_0511_),
    .B(_0514_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0515_));
 sky130_fd_sc_hd__a22o_1 _1002_ (.A1(\MCU.CPU_SEQ.state[4] ),
    .A2(_0510_),
    .B1(net20),
    .B2(_0515_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0008_));
 sky130_fd_sc_hd__or2b_1 _1003_ (.A(_0513_),
    .B_N(_0512_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0516_));
 sky130_fd_sc_hd__buf_2 _1004_ (.A(\MCU.SPI_CTRL.state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0517_));
 sky130_fd_sc_hd__or3b_2 _1005_ (.A(\MCU.SPI_CTRL.state[1] ),
    .B(_0516_),
    .C_N(_0517_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0518_));
 sky130_fd_sc_hd__and4b_1 _1006_ (.A_N(\MCU.SPI_CTRL.clock_counter[3] ),
    .B(\MCU.SPI_CTRL.clock_counter[2] ),
    .C(\MCU.SPI_CTRL.clock_counter[1] ),
    .D(\MCU.SPI_CTRL.clock_counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0519_));
 sky130_fd_sc_hd__nand2_4 _1007_ (.A(\MCU.SPI_CTRL.sclk_out ),
    .B(_0519_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0520_));
 sky130_fd_sc_hd__clkbuf_4 _1008_ (.A(_0520_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0521_));
 sky130_fd_sc_hd__o21a_1 _1009_ (.A1(_0518_),
    .A2(_0521_),
    .B1(\MCU.CPU_SEQ.state[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0522_));
 sky130_fd_sc_hd__clkbuf_4 _1010_ (.A(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0523_));
 sky130_fd_sc_hd__clkbuf_4 _1011_ (.A(_0523_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0524_));
 sky130_fd_sc_hd__o21a_1 _1012_ (.A1(net118),
    .A2(_0522_),
    .B1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0007_));
 sky130_fd_sc_hd__nor2_2 _1013_ (.A(\MCU.PC.pc_update_en_in ),
    .B(_0511_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0525_));
 sky130_fd_sc_hd__clkbuf_4 _1014_ (.A(_0525_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0526_));
 sky130_fd_sc_hd__inv_2 _1015_ (.A(_0526_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0003_));
 sky130_fd_sc_hd__buf_4 _1016_ (.A(_0523_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0527_));
 sky130_fd_sc_hd__or3_1 _1017_ (.A(_0495_),
    .B(_0516_),
    .C(_0520_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0528_));
 sky130_fd_sc_hd__buf_2 _1018_ (.A(_0528_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0529_));
 sky130_fd_sc_hd__clkbuf_4 _1019_ (.A(_0529_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0530_));
 sky130_fd_sc_hd__inv_2 _1020_ (.A(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0531_));
 sky130_fd_sc_hd__clkbuf_4 _1021_ (.A(_0511_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0532_));
 sky130_fd_sc_hd__nor2_1 _1022_ (.A(_0531_),
    .B(_0532_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0533_));
 sky130_fd_sc_hd__a31o_1 _1023_ (.A1(_0527_),
    .A2(net22),
    .A3(_0530_),
    .B1(_0533_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0006_));
 sky130_fd_sc_hd__mux2_1 _1024_ (.A0(\MCU.SPI_CTRL.mem_type[3] ),
    .A1(\MCU.CPU_SEQ.state[4] ),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0534_));
 sky130_fd_sc_hd__clkbuf_1 _1025_ (.A(_0534_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0011_));
 sky130_fd_sc_hd__inv_2 _1026_ (.A(_0530_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0535_));
 sky130_fd_sc_hd__and3_1 _1027_ (.A(_0523_),
    .B(net22),
    .C(_0535_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0536_));
 sky130_fd_sc_hd__clkbuf_1 _1028_ (.A(_0536_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0005_));
 sky130_fd_sc_hd__inv_2 _1029_ (.A(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0537_));
 sky130_fd_sc_hd__a22o_1 _1030_ (.A1(net57),
    .A2(_0537_),
    .B1(_0533_),
    .B2(_0514_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0010_));
 sky130_fd_sc_hd__inv_2 _1031_ (.A(\MCU.CPU_SEQ.inst_type_in[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0538_));
 sky130_fd_sc_hd__buf_2 _1032_ (.A(\MCU.CPU_SEQ.state[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0539_));
 sky130_fd_sc_hd__o211a_1 _1033_ (.A1(_0538_),
    .A2(\MCU.CPU_SEQ.imm_type_in[1] ),
    .B1(_0539_),
    .C1(\MCU.CPU_SEQ.inst_type_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0540_));
 sky130_fd_sc_hd__inv_2 _1034_ (.A(\MCU.CPU_SEQ.state[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0541_));
 sky130_fd_sc_hd__clkbuf_4 _1035_ (.A(_0541_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0542_));
 sky130_fd_sc_hd__nor3_1 _1036_ (.A(\MCU.CPU_SEQ.inst_type_in[1] ),
    .B(\MCU.CPU_SEQ.inst_type_in[0] ),
    .C(_0542_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0543_));
 sky130_fd_sc_hd__nor2_1 _1037_ (.A(_0518_),
    .B(_0520_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0544_));
 sky130_fd_sc_hd__a22o_1 _1038_ (.A1(\MCU.CPU_SEQ.state[8] ),
    .A2(_0514_),
    .B1(_0544_),
    .B2(\MCU.CPU_SEQ.state[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0545_));
 sky130_fd_sc_hd__o41a_1 _1039_ (.A1(net107),
    .A2(_0540_),
    .A3(_0543_),
    .A4(_0545_),
    .B1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0004_));
 sky130_fd_sc_hd__and4b_1 _1040_ (.A_N(\MCU.CPU_SEQ.inst_type_in[0] ),
    .B(_0539_),
    .C(_0523_),
    .D(\MCU.CPU_SEQ.inst_type_in[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0546_));
 sky130_fd_sc_hd__clkbuf_1 _1041_ (.A(_0546_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0002_));
 sky130_fd_sc_hd__and3_1 _1042_ (.A(\MCU.CPU_SEQ.inst_type_in[1] ),
    .B(\MCU.CPU_SEQ.inst_type_in[0] ),
    .C(\MCU.CPU_SEQ.state[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0547_));
 sky130_fd_sc_hd__and4b_1 _1043_ (.A_N(\MCU.CPU_SEQ.imm_type_in[1] ),
    .B(\MCU.CPU_SEQ.imm_type_in[0] ),
    .C(_0523_),
    .D(_0547_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0548_));
 sky130_fd_sc_hd__clkbuf_1 _1044_ (.A(_0548_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0001_));
 sky130_fd_sc_hd__nor2_4 _1045_ (.A(\MCU.CPU_SEQ.imm_type_in[1] ),
    .B(\MCU.CPU_SEQ.imm_type_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0549_));
 sky130_fd_sc_hd__and3_1 _1046_ (.A(_0523_),
    .B(_0547_),
    .C(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0550_));
 sky130_fd_sc_hd__clkbuf_1 _1047_ (.A(_0550_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0000_));
 sky130_fd_sc_hd__clkbuf_4 _1048_ (.A(\MCU.ALU.alu_op_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0551_));
 sky130_fd_sc_hd__mux2_1 _1049_ (.A0(\MCU.IR.ir_data_in[0] ),
    .A1(\MCU.PERI.periph_data_out[0] ),
    .S(\MCU.PERI.periph_data_valid_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0552_));
 sky130_fd_sc_hd__mux2_1 _1050_ (.A0(_0551_),
    .A1(_0552_),
    .S(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0553_));
 sky130_fd_sc_hd__buf_4 _1051_ (.A(\MCU.ALU.a_in[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0554_));
 sky130_fd_sc_hd__buf_2 _1052_ (.A(\MCU.ALU.alu_op_in[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0555_));
 sky130_fd_sc_hd__buf_2 _1053_ (.A(\MCU.ALU.alu_op_in[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0556_));
 sky130_fd_sc_hd__buf_2 _1054_ (.A(\MCU.ALU.alu_op_in[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0557_));
 sky130_fd_sc_hd__nor3_2 _1055_ (.A(_0555_),
    .B(_0556_),
    .C(_0557_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0558_));
 sky130_fd_sc_hd__nor2b_4 _1056_ (.A(_0551_),
    .B_N(_0558_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0559_));
 sky130_fd_sc_hd__or2b_1 _1057_ (.A(_0556_),
    .B_N(_0555_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0560_));
 sky130_fd_sc_hd__nor3_2 _1058_ (.A(_0557_),
    .B(\MCU.ALU.alu_op_in[0] ),
    .C(_0560_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0561_));
 sky130_fd_sc_hd__and4b_2 _1059_ (.A_N(_0556_),
    .B(_0557_),
    .C(\MCU.ALU.alu_op_in[0] ),
    .D(_0555_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0562_));
 sky130_fd_sc_hd__mux2_1 _1060_ (.A0(_0561_),
    .A1(_0562_),
    .S(\MCU.ALU.a_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0563_));
 sky130_fd_sc_hd__or3_2 _1061_ (.A(\MCU.CPU_SEQ.state[8] ),
    .B(\MCU.CPU_SEQ.state[6] ),
    .C(\MCU.CPU_SEQ.state[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0564_));
 sky130_fd_sc_hd__or4_2 _1062_ (.A(\MCU.PC.pc_update_en_in ),
    .B(\MCU.SR.status_write_en_in ),
    .C(\MCU.CPU_SEQ.state[0] ),
    .D(\MCU.CPU_SEQ.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0565_));
 sky130_fd_sc_hd__o21a_2 _1063_ (.A1(_0564_),
    .A2(_0565_),
    .B1(_0542_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0566_));
 sky130_fd_sc_hd__a22o_4 _1064_ (.A1(\MCU.ID.inst_in[10] ),
    .A2(\MCU.CPU_SEQ.state[3] ),
    .B1(_0566_),
    .B2(\MCU.ID.dst_addr_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0567_));
 sky130_fd_sc_hd__o211ai_4 _1065_ (.A1(_0564_),
    .A2(_0565_),
    .B1(\MCU.ID.dst_addr_out[0] ),
    .C1(_0541_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0568_));
 sky130_fd_sc_hd__nand2_2 _1066_ (.A(\MCU.ID.inst_in[8] ),
    .B(\MCU.CPU_SEQ.state[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0569_));
 sky130_fd_sc_hd__and2_2 _1067_ (.A(_0568_),
    .B(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0570_));
 sky130_fd_sc_hd__mux2_1 _1068_ (.A0(\MCU.RF.reg_file[3][0] ),
    .A1(\MCU.RF.reg_file[2][0] ),
    .S(_0570_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0571_));
 sky130_fd_sc_hd__mux2_1 _1069_ (.A0(\MCU.RF.reg_file[1][0] ),
    .A1(\MCU.RF.reg_file[0][0] ),
    .S(_0570_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0572_));
 sky130_fd_sc_hd__a22oi_4 _1070_ (.A1(\MCU.ID.inst_in[9] ),
    .A2(\MCU.CPU_SEQ.state[3] ),
    .B1(_0566_),
    .B2(\MCU.ID.dst_addr_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0573_));
 sky130_fd_sc_hd__mux2_1 _1071_ (.A0(_0571_),
    .A1(_0572_),
    .S(_0573_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0574_));
 sky130_fd_sc_hd__nand2_1 _1072_ (.A(_0568_),
    .B(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0575_));
 sky130_fd_sc_hd__clkbuf_4 _1073_ (.A(_0575_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0576_));
 sky130_fd_sc_hd__buf_4 _1074_ (.A(_0573_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0577_));
 sky130_fd_sc_hd__clkbuf_4 _1075_ (.A(_0570_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0578_));
 sky130_fd_sc_hd__or2_1 _1076_ (.A(\MCU.RF.reg_file[5][0] ),
    .B(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0579_));
 sky130_fd_sc_hd__o211a_1 _1077_ (.A1(\MCU.RF.reg_file[4][0] ),
    .A2(_0576_),
    .B1(_0577_),
    .C1(_0579_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0580_));
 sky130_fd_sc_hd__a22o_4 _1078_ (.A1(\MCU.ID.inst_in[9] ),
    .A2(\MCU.CPU_SEQ.state[3] ),
    .B1(_0566_),
    .B2(\MCU.ID.dst_addr_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0581_));
 sky130_fd_sc_hd__mux2_1 _1079_ (.A0(\MCU.RF.reg_file[7][0] ),
    .A1(\MCU.RF.reg_file[6][0] ),
    .S(_0570_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0582_));
 sky130_fd_sc_hd__a22oi_4 _1080_ (.A1(\MCU.ID.inst_in[10] ),
    .A2(\MCU.CPU_SEQ.state[3] ),
    .B1(_0566_),
    .B2(\MCU.ID.dst_addr_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0583_));
 sky130_fd_sc_hd__a21o_1 _1081_ (.A1(_0581_),
    .A2(_0582_),
    .B1(_0583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0584_));
 sky130_fd_sc_hd__o22a_4 _1082_ (.A1(_0567_),
    .A2(_0574_),
    .B1(_0580_),
    .B2(_0584_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0585_));
 sky130_fd_sc_hd__and4bb_2 _1083_ (.A_N(_0556_),
    .B_N(_0551_),
    .C(_0557_),
    .D(_0555_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0586_));
 sky130_fd_sc_hd__o21a_1 _1084_ (.A1(\MCU.ALU.a_in[0] ),
    .A2(_0585_),
    .B1(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0587_));
 sky130_fd_sc_hd__a211o_1 _1085_ (.A1(_0554_),
    .A2(_0559_),
    .B1(_0563_),
    .C1(_0587_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0588_));
 sky130_fd_sc_hd__and4bb_2 _1086_ (.A_N(_0556_),
    .B_N(_0557_),
    .C(_0551_),
    .D(_0555_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0589_));
 sky130_fd_sc_hd__nor3b_2 _1087_ (.A(\MCU.ALU.alu_op_in[3] ),
    .B(\MCU.ALU.alu_op_in[1] ),
    .C_N(\MCU.ALU.alu_op_in[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0590_));
 sky130_fd_sc_hd__or3b_2 _1088_ (.A(\MCU.ALU.alu_op_in[3] ),
    .B(\MCU.ALU.alu_op_in[1] ),
    .C_N(\MCU.ALU.alu_op_in[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0591_));
 sky130_fd_sc_hd__or3b_1 _1089_ (.A(_0555_),
    .B(_0551_),
    .C_N(_0556_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0592_));
 sky130_fd_sc_hd__nand2_2 _1090_ (.A(_0591_),
    .B(_0592_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0593_));
 sky130_fd_sc_hd__o31a_1 _1091_ (.A1(\MCU.ALU.a_in[0] ),
    .A2(_0585_),
    .A3(net10),
    .B1(_0593_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0594_));
 sky130_fd_sc_hd__o21ai_4 _1092_ (.A1(_0585_),
    .A2(net10),
    .B1(\MCU.ALU.a_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0595_));
 sky130_fd_sc_hd__mux2_1 _1093_ (.A0(_0589_),
    .A1(_0594_),
    .S(_0595_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0596_));
 sky130_fd_sc_hd__or2_1 _1094_ (.A(_0588_),
    .B(_0596_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0597_));
 sky130_fd_sc_hd__nand2_1 _1095_ (.A(\MCU.CPU_SEQ.inst_type_in[1] ),
    .B(\MCU.CPU_SEQ.inst_type_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0598_));
 sky130_fd_sc_hd__clkbuf_4 _1096_ (.A(_0598_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0599_));
 sky130_fd_sc_hd__mux2_2 _1097_ (.A0(_0553_),
    .A1(_0597_),
    .S(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0600_));
 sky130_fd_sc_hd__and4b_1 _1098_ (.A_N(\MCU.CPU_SEQ.imm_type_in[0] ),
    .B(\MCU.CPU_SEQ.imm_type_in[1] ),
    .C(\MCU.CPU_SEQ.inst_type_in[0] ),
    .D(\MCU.CPU_SEQ.inst_type_in[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0601_));
 sky130_fd_sc_hd__a22o_1 _1099_ (.A1(\MCU.ID.dst_addr_out[1] ),
    .A2(_0599_),
    .B1(_0601_),
    .B2(\MCU.ID.inst_in[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0602_));
 sky130_fd_sc_hd__a22o_1 _1100_ (.A1(\MCU.ID.dst_addr_out[2] ),
    .A2(_0598_),
    .B1(_0601_),
    .B2(\MCU.ID.inst_in[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0603_));
 sky130_fd_sc_hd__or2_2 _1101_ (.A(_0602_),
    .B(_0603_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0604_));
 sky130_fd_sc_hd__a2111o_1 _1102_ (.A1(\MCU.CPU_SEQ.state[3] ),
    .A2(_0601_),
    .B1(\MCU.PERI.periph_data_valid_out ),
    .C1(\MCU.SR.status_write_en_in ),
    .D1(_0544_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0605_));
 sky130_fd_sc_hd__a22o_1 _1103_ (.A1(\MCU.ID.dst_addr_out[0] ),
    .A2(_0599_),
    .B1(_0601_),
    .B2(\MCU.ID.inst_in[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0606_));
 sky130_fd_sc_hd__nand2_4 _1104_ (.A(_0605_),
    .B(_0606_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0607_));
 sky130_fd_sc_hd__nor2_4 _1105_ (.A(_0604_),
    .B(_0607_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0608_));
 sky130_fd_sc_hd__mux2_1 _1106_ (.A0(net77),
    .A1(_0600_),
    .S(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0609_));
 sky130_fd_sc_hd__clkbuf_1 _1107_ (.A(_0609_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0012_));
 sky130_fd_sc_hd__mux2_1 _1108_ (.A0(\MCU.IR.ir_data_in[1] ),
    .A1(\MCU.PERI.periph_data_out[1] ),
    .S(\MCU.PERI.periph_data_valid_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0610_));
 sky130_fd_sc_hd__mux2_1 _1109_ (.A0(_0557_),
    .A1(_0610_),
    .S(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0611_));
 sky130_fd_sc_hd__buf_4 _1110_ (.A(_0575_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0612_));
 sky130_fd_sc_hd__and3_1 _1111_ (.A(\MCU.RF.reg_file[2][1] ),
    .B(_0568_),
    .C(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0613_));
 sky130_fd_sc_hd__a211oi_2 _1112_ (.A1(\MCU.RF.reg_file[3][1] ),
    .A2(_0612_),
    .B1(_0573_),
    .C1(_0613_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0614_));
 sky130_fd_sc_hd__and3_1 _1113_ (.A(\MCU.RF.reg_file[0][1] ),
    .B(_0568_),
    .C(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0615_));
 sky130_fd_sc_hd__a211oi_2 _1114_ (.A1(\MCU.RF.reg_file[1][1] ),
    .A2(_0612_),
    .B1(_0581_),
    .C1(_0615_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0616_));
 sky130_fd_sc_hd__and3_1 _1115_ (.A(\MCU.RF.reg_file[4][1] ),
    .B(_0568_),
    .C(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0617_));
 sky130_fd_sc_hd__a211oi_2 _1116_ (.A1(\MCU.RF.reg_file[5][1] ),
    .A2(_0576_),
    .B1(_0581_),
    .C1(_0617_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0618_));
 sky130_fd_sc_hd__a21boi_1 _1117_ (.A1(_0568_),
    .A2(_0569_),
    .B1_N(\MCU.RF.reg_file[7][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0619_));
 sky130_fd_sc_hd__and3_1 _1118_ (.A(\MCU.RF.reg_file[6][1] ),
    .B(_0568_),
    .C(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0620_));
 sky130_fd_sc_hd__o31ai_2 _1119_ (.A1(_0573_),
    .A2(_0619_),
    .A3(_0620_),
    .B1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0621_));
 sky130_fd_sc_hd__o32ai_4 _1120_ (.A1(_0567_),
    .A2(_0614_),
    .A3(_0616_),
    .B1(_0618_),
    .B2(_0621_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0622_));
 sky130_fd_sc_hd__or2_1 _1121_ (.A(\MCU.ALU.alu_op_in[0] ),
    .B(_0591_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0623_));
 sky130_fd_sc_hd__clkbuf_4 _1122_ (.A(_0623_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0624_));
 sky130_fd_sc_hd__o21a_1 _1123_ (.A1(net10),
    .A2(_0622_),
    .B1(_0624_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0625_));
 sky130_fd_sc_hd__xnor2_2 _1124_ (.A(_0554_),
    .B(_0625_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0626_));
 sky130_fd_sc_hd__or2_1 _1125_ (.A(_0595_),
    .B(_0626_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0627_));
 sky130_fd_sc_hd__nand2_1 _1126_ (.A(_0595_),
    .B(_0626_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0628_));
 sky130_fd_sc_hd__and2_1 _1127_ (.A(\MCU.ALU.a_in[1] ),
    .B(_0625_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0629_));
 sky130_fd_sc_hd__o21a_1 _1128_ (.A1(_0554_),
    .A2(_0622_),
    .B1(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0630_));
 sky130_fd_sc_hd__inv_2 _1129_ (.A(_0554_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0631_));
 sky130_fd_sc_hd__clkbuf_4 _1130_ (.A(\MCU.ALU.a_in[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0632_));
 sky130_fd_sc_hd__and2_1 _1131_ (.A(_0551_),
    .B(_0558_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0633_));
 sky130_fd_sc_hd__buf_2 _1132_ (.A(_0633_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0634_));
 sky130_fd_sc_hd__a22o_1 _1133_ (.A1(_0554_),
    .A2(_0562_),
    .B1(_0634_),
    .B2(\MCU.ALU.a_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0635_));
 sky130_fd_sc_hd__a221o_1 _1134_ (.A1(_0631_),
    .A2(_0561_),
    .B1(_0559_),
    .B2(_0632_),
    .C1(_0635_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0636_));
 sky130_fd_sc_hd__a211o_1 _1135_ (.A1(_0589_),
    .A2(_0629_),
    .B1(_0630_),
    .C1(_0636_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0637_));
 sky130_fd_sc_hd__a31o_1 _1136_ (.A1(_0593_),
    .A2(_0627_),
    .A3(_0628_),
    .B1(_0637_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0638_));
 sky130_fd_sc_hd__mux2_2 _1137_ (.A0(_0611_),
    .A1(_0638_),
    .S(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0639_));
 sky130_fd_sc_hd__mux2_1 _1138_ (.A0(net135),
    .A1(_0639_),
    .S(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0640_));
 sky130_fd_sc_hd__clkbuf_1 _1139_ (.A(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0013_));
 sky130_fd_sc_hd__mux2_1 _1140_ (.A0(\MCU.IR.ir_data_in[2] ),
    .A1(\MCU.PERI.periph_data_out[2] ),
    .S(\MCU.PERI.periph_data_valid_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0641_));
 sky130_fd_sc_hd__mux2_1 _1141_ (.A0(_0556_),
    .A1(_0641_),
    .S(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0642_));
 sky130_fd_sc_hd__or3b_2 _1142_ (.A(_0560_),
    .B(_0557_),
    .C_N(_0551_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0643_));
 sky130_fd_sc_hd__mux2_1 _1143_ (.A0(\MCU.RF.reg_file[2][2] ),
    .A1(\MCU.RF.reg_file[3][2] ),
    .S(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0644_));
 sky130_fd_sc_hd__mux2_1 _1144_ (.A0(\MCU.RF.reg_file[0][2] ),
    .A1(\MCU.RF.reg_file[1][2] ),
    .S(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0645_));
 sky130_fd_sc_hd__mux2_1 _1145_ (.A0(_0644_),
    .A1(_0645_),
    .S(_0573_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0646_));
 sky130_fd_sc_hd__mux2_1 _1146_ (.A0(\MCU.RF.reg_file[4][2] ),
    .A1(\MCU.RF.reg_file[5][2] ),
    .S(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0647_));
 sky130_fd_sc_hd__or2_1 _1147_ (.A(_0581_),
    .B(_0647_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0648_));
 sky130_fd_sc_hd__mux2_1 _1148_ (.A0(\MCU.RF.reg_file[6][2] ),
    .A1(\MCU.RF.reg_file[7][2] ),
    .S(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0649_));
 sky130_fd_sc_hd__o21a_1 _1149_ (.A1(_0577_),
    .A2(_0649_),
    .B1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0650_));
 sky130_fd_sc_hd__a22o_4 _1150_ (.A1(_0583_),
    .A2(_0646_),
    .B1(_0648_),
    .B2(_0650_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0651_));
 sky130_fd_sc_hd__o211a_1 _1151_ (.A1(net10),
    .A2(_0651_),
    .B1(_0624_),
    .C1(\MCU.ALU.a_in[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0652_));
 sky130_fd_sc_hd__inv_2 _1152_ (.A(_0652_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0653_));
 sky130_fd_sc_hd__o21bai_4 _1153_ (.A1(_0595_),
    .A2(_0626_),
    .B1_N(_0629_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0654_));
 sky130_fd_sc_hd__o21a_1 _1154_ (.A1(net10),
    .A2(_0651_),
    .B1(_0624_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0655_));
 sky130_fd_sc_hd__or2_2 _1155_ (.A(\MCU.ALU.a_in[2] ),
    .B(_0655_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0656_));
 sky130_fd_sc_hd__a21oi_1 _1156_ (.A1(_0653_),
    .A2(_0656_),
    .B1(_0654_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0657_));
 sky130_fd_sc_hd__and2_1 _1157_ (.A(_0591_),
    .B(_0592_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0658_));
 sky130_fd_sc_hd__a311o_1 _1158_ (.A1(_0654_),
    .A2(_0653_),
    .A3(_0656_),
    .B1(_0657_),
    .C1(_0658_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0659_));
 sky130_fd_sc_hd__o21ai_1 _1159_ (.A1(_0632_),
    .A2(_0651_),
    .B1(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0660_));
 sky130_fd_sc_hd__mux2_1 _1160_ (.A0(_0561_),
    .A1(_0562_),
    .S(_0632_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0661_));
 sky130_fd_sc_hd__a221oi_2 _1161_ (.A1(\MCU.ALU.a_in[3] ),
    .A2(_0559_),
    .B1(_0634_),
    .B2(_0554_),
    .C1(_0661_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0662_));
 sky130_fd_sc_hd__o2111ai_4 _1162_ (.A1(_0643_),
    .A2(_0653_),
    .B1(_0659_),
    .C1(_0660_),
    .D1(_0662_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0663_));
 sky130_fd_sc_hd__mux2_2 _1163_ (.A0(_0642_),
    .A1(_0663_),
    .S(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0664_));
 sky130_fd_sc_hd__mux2_1 _1164_ (.A0(net64),
    .A1(_0664_),
    .S(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0665_));
 sky130_fd_sc_hd__buf_1 _1165_ (.A(_0665_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0014_));
 sky130_fd_sc_hd__mux2_1 _1166_ (.A0(\MCU.IR.ir_data_in[3] ),
    .A1(\MCU.PERI.periph_data_out[3] ),
    .S(\MCU.PERI.periph_data_valid_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0666_));
 sky130_fd_sc_hd__mux2_1 _1167_ (.A0(_0555_),
    .A1(_0666_),
    .S(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0667_));
 sky130_fd_sc_hd__mux2_1 _1168_ (.A0(\MCU.RF.reg_file[2][3] ),
    .A1(\MCU.RF.reg_file[3][3] ),
    .S(_0575_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0668_));
 sky130_fd_sc_hd__mux2_1 _1169_ (.A0(\MCU.RF.reg_file[0][3] ),
    .A1(\MCU.RF.reg_file[1][3] ),
    .S(_0575_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0669_));
 sky130_fd_sc_hd__mux2_1 _1170_ (.A0(_0668_),
    .A1(_0669_),
    .S(_0573_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0670_));
 sky130_fd_sc_hd__mux2_1 _1171_ (.A0(\MCU.RF.reg_file[4][3] ),
    .A1(\MCU.RF.reg_file[5][3] ),
    .S(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0671_));
 sky130_fd_sc_hd__or2_1 _1172_ (.A(_0581_),
    .B(_0671_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0672_));
 sky130_fd_sc_hd__mux2_1 _1173_ (.A0(\MCU.RF.reg_file[6][3] ),
    .A1(\MCU.RF.reg_file[7][3] ),
    .S(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0673_));
 sky130_fd_sc_hd__o21a_1 _1174_ (.A1(_0573_),
    .A2(_0673_),
    .B1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0674_));
 sky130_fd_sc_hd__a22o_4 _1175_ (.A1(_0583_),
    .A2(_0670_),
    .B1(_0672_),
    .B2(_0674_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0675_));
 sky130_fd_sc_hd__or2_1 _1176_ (.A(net10),
    .B(_0675_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0676_));
 sky130_fd_sc_hd__and3_2 _1177_ (.A(\MCU.ALU.a_in[3] ),
    .B(_0624_),
    .C(_0676_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0677_));
 sky130_fd_sc_hd__a21oi_4 _1178_ (.A1(_0624_),
    .A2(_0676_),
    .B1(\MCU.ALU.a_in[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0678_));
 sky130_fd_sc_hd__nor2_1 _1179_ (.A(_0677_),
    .B(_0678_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0679_));
 sky130_fd_sc_hd__a21oi_1 _1180_ (.A1(_0654_),
    .A2(_0656_),
    .B1(_0652_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0680_));
 sky130_fd_sc_hd__xnor2_1 _1181_ (.A(_0679_),
    .B(_0680_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0681_));
 sky130_fd_sc_hd__o21a_1 _1182_ (.A1(\MCU.ALU.a_in[3] ),
    .A2(_0675_),
    .B1(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0682_));
 sky130_fd_sc_hd__mux2_1 _1183_ (.A0(_0561_),
    .A1(_0562_),
    .S(\MCU.ALU.a_in[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0683_));
 sky130_fd_sc_hd__a22o_1 _1184_ (.A1(\MCU.ALU.a_in[4] ),
    .A2(_0559_),
    .B1(_0634_),
    .B2(_0632_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0684_));
 sky130_fd_sc_hd__or3_1 _1185_ (.A(_0682_),
    .B(_0683_),
    .C(_0684_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0685_));
 sky130_fd_sc_hd__a221o_1 _1186_ (.A1(_0589_),
    .A2(_0677_),
    .B1(_0681_),
    .B2(_0593_),
    .C1(_0685_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0686_));
 sky130_fd_sc_hd__mux2_2 _1187_ (.A0(_0667_),
    .A1(_0686_),
    .S(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0687_));
 sky130_fd_sc_hd__mux2_1 _1188_ (.A0(net99),
    .A1(_0687_),
    .S(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0688_));
 sky130_fd_sc_hd__buf_1 _1189_ (.A(_0688_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0015_));
 sky130_fd_sc_hd__mux2_1 _1190_ (.A0(\MCU.IR.ir_data_in[4] ),
    .A1(\MCU.PERI.periph_data_out[4] ),
    .S(\MCU.PERI.periph_data_valid_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0689_));
 sky130_fd_sc_hd__mux2_1 _1191_ (.A0(\MCU.ID.imm_out[4] ),
    .A1(_0689_),
    .S(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0690_));
 sky130_fd_sc_hd__mux2_1 _1192_ (.A0(\MCU.RF.reg_file[2][4] ),
    .A1(\MCU.RF.reg_file[3][4] ),
    .S(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0691_));
 sky130_fd_sc_hd__mux2_1 _1193_ (.A0(\MCU.RF.reg_file[0][4] ),
    .A1(\MCU.RF.reg_file[1][4] ),
    .S(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0692_));
 sky130_fd_sc_hd__mux2_1 _1194_ (.A0(_0691_),
    .A1(_0692_),
    .S(_0577_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0693_));
 sky130_fd_sc_hd__mux2_1 _1195_ (.A0(\MCU.RF.reg_file[4][4] ),
    .A1(\MCU.RF.reg_file[5][4] ),
    .S(_0576_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0694_));
 sky130_fd_sc_hd__or2_1 _1196_ (.A(_0581_),
    .B(_0694_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0695_));
 sky130_fd_sc_hd__mux2_1 _1197_ (.A0(\MCU.RF.reg_file[6][4] ),
    .A1(\MCU.RF.reg_file[7][4] ),
    .S(_0576_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0696_));
 sky130_fd_sc_hd__o21a_1 _1198_ (.A1(_0577_),
    .A2(_0696_),
    .B1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0697_));
 sky130_fd_sc_hd__a22o_4 _1199_ (.A1(_0583_),
    .A2(_0693_),
    .B1(_0695_),
    .B2(_0697_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0698_));
 sky130_fd_sc_hd__o211ai_2 _1200_ (.A1(net10),
    .A2(_0698_),
    .B1(_0624_),
    .C1(\MCU.ALU.a_in[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0699_));
 sky130_fd_sc_hd__a211oi_4 _1201_ (.A1(_0654_),
    .A2(_0656_),
    .B1(_0677_),
    .C1(_0652_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0700_));
 sky130_fd_sc_hd__o21a_1 _1202_ (.A1(net10),
    .A2(_0698_),
    .B1(_0624_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0701_));
 sky130_fd_sc_hd__xnor2_1 _1203_ (.A(\MCU.ALU.a_in[4] ),
    .B(_0701_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0702_));
 sky130_fd_sc_hd__o21a_1 _1204_ (.A1(_0678_),
    .A2(_0700_),
    .B1(_0702_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0703_));
 sky130_fd_sc_hd__or3_1 _1205_ (.A(_0678_),
    .B(_0702_),
    .C(_0700_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0704_));
 sky130_fd_sc_hd__or3b_1 _1206_ (.A(_0658_),
    .B(_0703_),
    .C_N(_0704_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0705_));
 sky130_fd_sc_hd__o21ai_1 _1207_ (.A1(\MCU.ALU.a_in[4] ),
    .A2(_0698_),
    .B1(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0706_));
 sky130_fd_sc_hd__mux2_1 _1208_ (.A0(_0561_),
    .A1(_0562_),
    .S(\MCU.ALU.a_in[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0707_));
 sky130_fd_sc_hd__a221oi_2 _1209_ (.A1(\MCU.ALU.a_in[5] ),
    .A2(_0559_),
    .B1(_0634_),
    .B2(\MCU.ALU.a_in[3] ),
    .C1(_0707_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0708_));
 sky130_fd_sc_hd__o2111ai_2 _1210_ (.A1(_0643_),
    .A2(_0699_),
    .B1(_0705_),
    .C1(_0706_),
    .D1(_0708_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0709_));
 sky130_fd_sc_hd__mux2_2 _1211_ (.A0(_0690_),
    .A1(_0709_),
    .S(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0710_));
 sky130_fd_sc_hd__mux2_1 _1212_ (.A0(net97),
    .A1(_0710_),
    .S(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0711_));
 sky130_fd_sc_hd__clkbuf_1 _1213_ (.A(_0711_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0016_));
 sky130_fd_sc_hd__mux2_1 _1214_ (.A0(\MCU.IR.ir_data_in[5] ),
    .A1(\MCU.PERI.periph_data_out[5] ),
    .S(\MCU.PERI.periph_data_valid_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0712_));
 sky130_fd_sc_hd__mux2_1 _1215_ (.A0(\MCU.ID.dst_addr_out[0] ),
    .A1(_0712_),
    .S(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0713_));
 sky130_fd_sc_hd__inv_2 _1216_ (.A(\MCU.ALU.a_in[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0714_));
 sky130_fd_sc_hd__nand2_1 _1217_ (.A(\MCU.RF.reg_file[1][5] ),
    .B(_0576_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0715_));
 sky130_fd_sc_hd__nand2_1 _1218_ (.A(\MCU.RF.reg_file[0][5] ),
    .B(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0716_));
 sky130_fd_sc_hd__and3_1 _1219_ (.A(\MCU.RF.reg_file[2][5] ),
    .B(_0568_),
    .C(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0717_));
 sky130_fd_sc_hd__a211oi_1 _1220_ (.A1(\MCU.RF.reg_file[3][5] ),
    .A2(_0576_),
    .B1(_0573_),
    .C1(_0717_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0718_));
 sky130_fd_sc_hd__a311o_1 _1221_ (.A1(_0577_),
    .A2(_0715_),
    .A3(_0716_),
    .B1(_0567_),
    .C1(_0718_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0719_));
 sky130_fd_sc_hd__mux2_1 _1222_ (.A0(\MCU.RF.reg_file[6][5] ),
    .A1(\MCU.RF.reg_file[7][5] ),
    .S(_0576_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0720_));
 sky130_fd_sc_hd__and3_1 _1223_ (.A(\MCU.RF.reg_file[4][5] ),
    .B(_0568_),
    .C(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0721_));
 sky130_fd_sc_hd__a211o_1 _1224_ (.A1(\MCU.RF.reg_file[5][5] ),
    .A2(_0576_),
    .B1(_0581_),
    .C1(_0721_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0722_));
 sky130_fd_sc_hd__o211ai_4 _1225_ (.A1(_0577_),
    .A2(_0720_),
    .B1(_0722_),
    .C1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0723_));
 sky130_fd_sc_hd__inv_2 _1226_ (.A(_0624_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0724_));
 sky130_fd_sc_hd__a31o_1 _1227_ (.A1(_0591_),
    .A2(_0719_),
    .A3(_0723_),
    .B1(_0724_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0725_));
 sky130_fd_sc_hd__xnor2_1 _1228_ (.A(_0714_),
    .B(_0725_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0726_));
 sky130_fd_sc_hd__and3_1 _1229_ (.A(_0699_),
    .B(_0704_),
    .C(_0726_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0727_));
 sky130_fd_sc_hd__or2_1 _1230_ (.A(_0702_),
    .B(_0726_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0728_));
 sky130_fd_sc_hd__or2_1 _1231_ (.A(_0699_),
    .B(_0726_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0729_));
 sky130_fd_sc_hd__o31a_1 _1232_ (.A1(_0678_),
    .A2(_0700_),
    .A3(_0728_),
    .B1(_0729_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0730_));
 sky130_fd_sc_hd__nand2_1 _1233_ (.A(_0593_),
    .B(_0730_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0731_));
 sky130_fd_sc_hd__nor2_1 _1234_ (.A(_0714_),
    .B(_0725_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0732_));
 sky130_fd_sc_hd__nand2_4 _1235_ (.A(_0719_),
    .B(_0723_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0733_));
 sky130_fd_sc_hd__o21a_1 _1236_ (.A1(\MCU.ALU.a_in[5] ),
    .A2(_0733_),
    .B1(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0734_));
 sky130_fd_sc_hd__mux2_1 _1237_ (.A0(_0561_),
    .A1(_0562_),
    .S(\MCU.ALU.a_in[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0735_));
 sky130_fd_sc_hd__a221o_1 _1238_ (.A1(\MCU.ALU.a_in[6] ),
    .A2(_0559_),
    .B1(_0634_),
    .B2(\MCU.ALU.a_in[4] ),
    .C1(_0735_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0736_));
 sky130_fd_sc_hd__a211o_1 _1239_ (.A1(_0589_),
    .A2(_0732_),
    .B1(_0734_),
    .C1(_0736_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0737_));
 sky130_fd_sc_hd__o21ba_1 _1240_ (.A1(_0727_),
    .A2(_0731_),
    .B1_N(_0737_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0738_));
 sky130_fd_sc_hd__inv_2 _1241_ (.A(_0738_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0739_));
 sky130_fd_sc_hd__mux2_2 _1242_ (.A0(_0713_),
    .A1(_0739_),
    .S(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0740_));
 sky130_fd_sc_hd__mux2_1 _1243_ (.A0(net114),
    .A1(_0740_),
    .S(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0741_));
 sky130_fd_sc_hd__clkbuf_1 _1244_ (.A(_0741_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0017_));
 sky130_fd_sc_hd__mux2_1 _1245_ (.A0(\MCU.IR.ir_data_in[6] ),
    .A1(\MCU.PERI.periph_data_out[6] ),
    .S(\MCU.PERI.periph_data_valid_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0742_));
 sky130_fd_sc_hd__mux2_1 _1246_ (.A0(\MCU.ID.dst_addr_out[1] ),
    .A1(_0742_),
    .S(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0743_));
 sky130_fd_sc_hd__or2_1 _1247_ (.A(\MCU.RF.reg_file[1][6] ),
    .B(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0744_));
 sky130_fd_sc_hd__o211a_1 _1248_ (.A1(\MCU.RF.reg_file[0][6] ),
    .A2(_0576_),
    .B1(_0577_),
    .C1(_0744_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0745_));
 sky130_fd_sc_hd__mux2_1 _1249_ (.A0(\MCU.RF.reg_file[3][6] ),
    .A1(\MCU.RF.reg_file[2][6] ),
    .S(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0746_));
 sky130_fd_sc_hd__a21o_1 _1250_ (.A1(_0581_),
    .A2(_0746_),
    .B1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0747_));
 sky130_fd_sc_hd__mux2_1 _1251_ (.A0(\MCU.RF.reg_file[7][6] ),
    .A1(\MCU.RF.reg_file[6][6] ),
    .S(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0748_));
 sky130_fd_sc_hd__mux2_1 _1252_ (.A0(\MCU.RF.reg_file[5][6] ),
    .A1(\MCU.RF.reg_file[4][6] ),
    .S(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0749_));
 sky130_fd_sc_hd__mux2_1 _1253_ (.A0(_0748_),
    .A1(_0749_),
    .S(_0577_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0750_));
 sky130_fd_sc_hd__o22a_4 _1254_ (.A1(_0745_),
    .A2(_0747_),
    .B1(_0750_),
    .B2(_0583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0751_));
 sky130_fd_sc_hd__o21a_1 _1255_ (.A1(_0590_),
    .A2(_0751_),
    .B1(_0624_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0752_));
 sky130_fd_sc_hd__and2_1 _1256_ (.A(\MCU.ALU.a_in[6] ),
    .B(_0752_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0753_));
 sky130_fd_sc_hd__or2_1 _1257_ (.A(\MCU.ALU.a_in[6] ),
    .B(_0752_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0754_));
 sky130_fd_sc_hd__and2b_1 _1258_ (.A_N(_0753_),
    .B(_0754_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0755_));
 sky130_fd_sc_hd__and2b_1 _1259_ (.A_N(_0732_),
    .B(_0729_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0756_));
 sky130_fd_sc_hd__o31ai_4 _1260_ (.A1(_0678_),
    .A2(_0700_),
    .A3(_0728_),
    .B1(_0756_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0757_));
 sky130_fd_sc_hd__nand2_1 _1261_ (.A(_0755_),
    .B(_0757_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0758_));
 sky130_fd_sc_hd__o21a_1 _1262_ (.A1(_0755_),
    .A2(_0757_),
    .B1(_0593_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0759_));
 sky130_fd_sc_hd__or2_1 _1263_ (.A(\MCU.ALU.a_in[6] ),
    .B(_0751_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0760_));
 sky130_fd_sc_hd__mux2_1 _1264_ (.A0(_0561_),
    .A1(_0562_),
    .S(\MCU.ALU.a_in[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0761_));
 sky130_fd_sc_hd__a221o_1 _1265_ (.A1(\MCU.ALU.a_in[7] ),
    .A2(_0559_),
    .B1(_0634_),
    .B2(\MCU.ALU.a_in[5] ),
    .C1(_0761_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0762_));
 sky130_fd_sc_hd__a221o_1 _1266_ (.A1(_0589_),
    .A2(_0753_),
    .B1(_0760_),
    .B2(_0586_),
    .C1(_0762_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0763_));
 sky130_fd_sc_hd__a21o_1 _1267_ (.A1(_0758_),
    .A2(_0759_),
    .B1(_0763_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0764_));
 sky130_fd_sc_hd__mux2_2 _1268_ (.A0(_0743_),
    .A1(_0764_),
    .S(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0765_));
 sky130_fd_sc_hd__mux2_1 _1269_ (.A0(net60),
    .A1(_0765_),
    .S(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0766_));
 sky130_fd_sc_hd__clkbuf_1 _1270_ (.A(_0766_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0018_));
 sky130_fd_sc_hd__mux2_1 _1271_ (.A0(\MCU.IR.ir_data_in[7] ),
    .A1(\MCU.PERI.periph_data_out[7] ),
    .S(\MCU.PERI.periph_data_valid_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0767_));
 sky130_fd_sc_hd__mux2_1 _1272_ (.A0(\MCU.ID.dst_addr_out[2] ),
    .A1(_0767_),
    .S(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0768_));
 sky130_fd_sc_hd__a21oi_2 _1273_ (.A1(_0754_),
    .A2(_0757_),
    .B1(_0753_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0769_));
 sky130_fd_sc_hd__or2_1 _1274_ (.A(\MCU.RF.reg_file[1][7] ),
    .B(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0770_));
 sky130_fd_sc_hd__o211a_1 _1275_ (.A1(\MCU.RF.reg_file[0][7] ),
    .A2(_0576_),
    .B1(_0577_),
    .C1(_0770_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0771_));
 sky130_fd_sc_hd__mux2_1 _1276_ (.A0(\MCU.RF.reg_file[3][7] ),
    .A1(\MCU.RF.reg_file[2][7] ),
    .S(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0772_));
 sky130_fd_sc_hd__a21o_1 _1277_ (.A1(_0581_),
    .A2(_0772_),
    .B1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0773_));
 sky130_fd_sc_hd__mux2_1 _1278_ (.A0(\MCU.RF.reg_file[7][7] ),
    .A1(\MCU.RF.reg_file[6][7] ),
    .S(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0774_));
 sky130_fd_sc_hd__mux2_1 _1279_ (.A0(\MCU.RF.reg_file[5][7] ),
    .A1(\MCU.RF.reg_file[4][7] ),
    .S(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0775_));
 sky130_fd_sc_hd__mux2_1 _1280_ (.A0(_0774_),
    .A1(_0775_),
    .S(_0577_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0776_));
 sky130_fd_sc_hd__o22a_2 _1281_ (.A1(_0771_),
    .A2(_0773_),
    .B1(_0776_),
    .B2(_0583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0777_));
 sky130_fd_sc_hd__o21a_1 _1282_ (.A1(_0590_),
    .A2(_0777_),
    .B1(_0624_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0778_));
 sky130_fd_sc_hd__and2_1 _1283_ (.A(\MCU.ALU.a_in[7] ),
    .B(_0778_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0779_));
 sky130_fd_sc_hd__nor2_1 _1284_ (.A(\MCU.ALU.a_in[7] ),
    .B(_0778_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0780_));
 sky130_fd_sc_hd__nor2_1 _1285_ (.A(_0779_),
    .B(_0780_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0781_));
 sky130_fd_sc_hd__xnor2_1 _1286_ (.A(_0769_),
    .B(_0781_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0782_));
 sky130_fd_sc_hd__or2_1 _1287_ (.A(\MCU.ALU.a_in[7] ),
    .B(_0778_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0783_));
 sky130_fd_sc_hd__mux2_1 _1288_ (.A0(_0561_),
    .A1(_0562_),
    .S(\MCU.ALU.a_in[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0784_));
 sky130_fd_sc_hd__a22o_1 _1289_ (.A1(\MCU.ALU.a_in[6] ),
    .A2(_0634_),
    .B1(_0779_),
    .B2(_0589_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0785_));
 sky130_fd_sc_hd__a211o_1 _1290_ (.A1(_0586_),
    .A2(_0783_),
    .B1(_0784_),
    .C1(_0785_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0786_));
 sky130_fd_sc_hd__a21o_1 _1291_ (.A1(_0593_),
    .A2(_0782_),
    .B1(_0786_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0787_));
 sky130_fd_sc_hd__mux2_2 _1292_ (.A0(_0768_),
    .A1(_0787_),
    .S(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0788_));
 sky130_fd_sc_hd__mux2_1 _1293_ (.A0(net59),
    .A1(_0788_),
    .S(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0789_));
 sky130_fd_sc_hd__clkbuf_1 _1294_ (.A(_0789_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0019_));
 sky130_fd_sc_hd__or2b_2 _1295_ (.A(_0603_),
    .B_N(_0602_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0790_));
 sky130_fd_sc_hd__or2b_4 _1296_ (.A(_0606_),
    .B_N(_0605_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0791_));
 sky130_fd_sc_hd__nor2_4 _1297_ (.A(_0790_),
    .B(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0792_));
 sky130_fd_sc_hd__mux2_1 _1298_ (.A0(net73),
    .A1(_0600_),
    .S(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0793_));
 sky130_fd_sc_hd__clkbuf_1 _1299_ (.A(_0793_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0020_));
 sky130_fd_sc_hd__mux2_1 _1300_ (.A0(net49),
    .A1(_0639_),
    .S(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0794_));
 sky130_fd_sc_hd__clkbuf_1 _1301_ (.A(_0794_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0021_));
 sky130_fd_sc_hd__mux2_1 _1302_ (.A0(net76),
    .A1(_0664_),
    .S(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0795_));
 sky130_fd_sc_hd__clkbuf_1 _1303_ (.A(_0795_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0022_));
 sky130_fd_sc_hd__mux2_1 _1304_ (.A0(net51),
    .A1(_0687_),
    .S(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0796_));
 sky130_fd_sc_hd__clkbuf_1 _1305_ (.A(_0796_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0023_));
 sky130_fd_sc_hd__mux2_1 _1306_ (.A0(net94),
    .A1(_0710_),
    .S(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0797_));
 sky130_fd_sc_hd__clkbuf_1 _1307_ (.A(_0797_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0024_));
 sky130_fd_sc_hd__mux2_1 _1308_ (.A0(net83),
    .A1(_0740_),
    .S(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0798_));
 sky130_fd_sc_hd__clkbuf_1 _1309_ (.A(_0798_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0025_));
 sky130_fd_sc_hd__mux2_1 _1310_ (.A0(net88),
    .A1(_0765_),
    .S(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0799_));
 sky130_fd_sc_hd__clkbuf_1 _1311_ (.A(_0799_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0026_));
 sky130_fd_sc_hd__mux2_1 _1312_ (.A0(net91),
    .A1(_0788_),
    .S(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0800_));
 sky130_fd_sc_hd__clkbuf_1 _1313_ (.A(_0800_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0027_));
 sky130_fd_sc_hd__nor2_4 _1314_ (.A(_0607_),
    .B(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0801_));
 sky130_fd_sc_hd__mux2_1 _1315_ (.A0(net82),
    .A1(_0600_),
    .S(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0802_));
 sky130_fd_sc_hd__clkbuf_1 _1316_ (.A(_0802_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0028_));
 sky130_fd_sc_hd__mux2_1 _1317_ (.A0(net134),
    .A1(_0639_),
    .S(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0803_));
 sky130_fd_sc_hd__clkbuf_1 _1318_ (.A(_0803_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0029_));
 sky130_fd_sc_hd__mux2_1 _1319_ (.A0(net86),
    .A1(_0664_),
    .S(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0804_));
 sky130_fd_sc_hd__buf_1 _1320_ (.A(_0804_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0030_));
 sky130_fd_sc_hd__mux2_1 _1321_ (.A0(net102),
    .A1(_0687_),
    .S(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0805_));
 sky130_fd_sc_hd__buf_1 _1322_ (.A(_0805_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0031_));
 sky130_fd_sc_hd__mux2_1 _1323_ (.A0(net87),
    .A1(_0710_),
    .S(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0806_));
 sky130_fd_sc_hd__clkbuf_1 _1324_ (.A(_0806_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0032_));
 sky130_fd_sc_hd__mux2_1 _1325_ (.A0(net111),
    .A1(_0740_),
    .S(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0807_));
 sky130_fd_sc_hd__clkbuf_1 _1326_ (.A(_0807_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0033_));
 sky130_fd_sc_hd__mux2_1 _1327_ (.A0(net61),
    .A1(_0765_),
    .S(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0808_));
 sky130_fd_sc_hd__clkbuf_1 _1328_ (.A(_0808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0034_));
 sky130_fd_sc_hd__mux2_1 _1329_ (.A0(net69),
    .A1(_0788_),
    .S(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0809_));
 sky130_fd_sc_hd__clkbuf_1 _1330_ (.A(_0809_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0035_));
 sky130_fd_sc_hd__nor2_4 _1331_ (.A(_0604_),
    .B(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0810_));
 sky130_fd_sc_hd__mux2_1 _1332_ (.A0(net84),
    .A1(_0600_),
    .S(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0811_));
 sky130_fd_sc_hd__clkbuf_1 _1333_ (.A(_0811_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0036_));
 sky130_fd_sc_hd__mux2_1 _1334_ (.A0(net58),
    .A1(_0639_),
    .S(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0812_));
 sky130_fd_sc_hd__clkbuf_1 _1335_ (.A(_0812_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0037_));
 sky130_fd_sc_hd__mux2_1 _1336_ (.A0(net62),
    .A1(_0664_),
    .S(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0813_));
 sky130_fd_sc_hd__clkbuf_1 _1337_ (.A(_0813_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0038_));
 sky130_fd_sc_hd__mux2_1 _1338_ (.A0(net117),
    .A1(_0687_),
    .S(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0814_));
 sky130_fd_sc_hd__buf_1 _1339_ (.A(_0814_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0039_));
 sky130_fd_sc_hd__mux2_1 _1340_ (.A0(net65),
    .A1(_0710_),
    .S(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0815_));
 sky130_fd_sc_hd__clkbuf_1 _1341_ (.A(_0815_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0040_));
 sky130_fd_sc_hd__mux2_1 _1342_ (.A0(net110),
    .A1(_0740_),
    .S(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0816_));
 sky130_fd_sc_hd__clkbuf_1 _1343_ (.A(_0816_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0041_));
 sky130_fd_sc_hd__mux2_1 _1344_ (.A0(net106),
    .A1(_0765_),
    .S(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0817_));
 sky130_fd_sc_hd__clkbuf_1 _1345_ (.A(_0817_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0042_));
 sky130_fd_sc_hd__mux2_1 _1346_ (.A0(net98),
    .A1(_0788_),
    .S(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0818_));
 sky130_fd_sc_hd__clkbuf_1 _1347_ (.A(_0818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0043_));
 sky130_fd_sc_hd__or2b_1 _1348_ (.A(_0779_),
    .B_N(_0769_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0819_));
 sky130_fd_sc_hd__a22o_1 _1349_ (.A1(\MCU.ALU.a_in[0] ),
    .A2(_0559_),
    .B1(_0634_),
    .B2(\MCU.ALU.a_in[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0820_));
 sky130_fd_sc_hd__a31o_1 _1350_ (.A1(_0593_),
    .A2(_0783_),
    .A3(_0819_),
    .B1(_0820_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0821_));
 sky130_fd_sc_hd__nand2_1 _1351_ (.A(\MCU.SR.status_write_en_in ),
    .B(_0560_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0822_));
 sky130_fd_sc_hd__mux2_1 _1352_ (.A0(_0821_),
    .A1(\MCU.ALU.carry_in ),
    .S(_0822_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0823_));
 sky130_fd_sc_hd__and2_1 _1353_ (.A(_0510_),
    .B(_0823_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0824_));
 sky130_fd_sc_hd__clkbuf_1 _1354_ (.A(_0824_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0044_));
 sky130_fd_sc_hd__nand3b_1 _1355_ (.A_N(_0512_),
    .B(\MCU.SPI_CTRL.state[2] ),
    .C(\MCU.SPI_CTRL.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0825_));
 sky130_fd_sc_hd__buf_2 _1356_ (.A(_0825_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0826_));
 sky130_fd_sc_hd__nor2_1 _1357_ (.A(_0520_),
    .B(_0826_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0827_));
 sky130_fd_sc_hd__and2_1 _1358_ (.A(_0517_),
    .B(_0827_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0828_));
 sky130_fd_sc_hd__buf_2 _1359_ (.A(_0828_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0829_));
 sky130_fd_sc_hd__and2b_1 _1360_ (.A_N(\MCU.CPU_SEQ.state[2] ),
    .B(\MCU.CPU_SEQ.state[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0830_));
 sky130_fd_sc_hd__nand2_2 _1361_ (.A(_0531_),
    .B(_0830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0831_));
 sky130_fd_sc_hd__or3b_1 _1362_ (.A(_0496_),
    .B(_0831_),
    .C_N(_0502_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0832_));
 sky130_fd_sc_hd__clkbuf_4 _1363_ (.A(_0832_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0833_));
 sky130_fd_sc_hd__mux2_1 _1364_ (.A0(_0585_),
    .A1(\MCU.IR.ir_data_in[8] ),
    .S(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0834_));
 sky130_fd_sc_hd__nand2_2 _1365_ (.A(_0517_),
    .B(_0827_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0835_));
 sky130_fd_sc_hd__or2_1 _1366_ (.A(\MCU.IR.ir_data_in[0] ),
    .B(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0836_));
 sky130_fd_sc_hd__o211a_1 _1367_ (.A1(_0829_),
    .A2(_0834_),
    .B1(_0836_),
    .C1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0045_));
 sky130_fd_sc_hd__mux2_1 _1368_ (.A0(net7),
    .A1(\MCU.IR.ir_data_in[9] ),
    .S(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0837_));
 sky130_fd_sc_hd__or2_1 _1369_ (.A(\MCU.IR.ir_data_in[1] ),
    .B(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0838_));
 sky130_fd_sc_hd__o211a_1 _1370_ (.A1(_0829_),
    .A2(_0837_),
    .B1(_0838_),
    .C1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0046_));
 sky130_fd_sc_hd__mux2_1 _1371_ (.A0(_0651_),
    .A1(\MCU.IR.ir_data_in[10] ),
    .S(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0839_));
 sky130_fd_sc_hd__or2_1 _1372_ (.A(\MCU.IR.ir_data_in[2] ),
    .B(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0840_));
 sky130_fd_sc_hd__o211a_1 _1373_ (.A1(_0829_),
    .A2(_0839_),
    .B1(_0840_),
    .C1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0047_));
 sky130_fd_sc_hd__mux2_1 _1374_ (.A0(_0675_),
    .A1(\MCU.IR.ir_data_in[11] ),
    .S(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0841_));
 sky130_fd_sc_hd__or2_1 _1375_ (.A(\MCU.IR.ir_data_in[3] ),
    .B(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0842_));
 sky130_fd_sc_hd__o211a_1 _1376_ (.A1(_0829_),
    .A2(_0841_),
    .B1(_0842_),
    .C1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0048_));
 sky130_fd_sc_hd__mux2_1 _1377_ (.A0(_0698_),
    .A1(\MCU.IR.ir_data_in[12] ),
    .S(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0843_));
 sky130_fd_sc_hd__or2_1 _1378_ (.A(net141),
    .B(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0844_));
 sky130_fd_sc_hd__o211a_1 _1379_ (.A1(_0829_),
    .A2(_0843_),
    .B1(_0844_),
    .C1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0049_));
 sky130_fd_sc_hd__mux2_1 _1380_ (.A0(_0733_),
    .A1(\MCU.IR.ir_data_in[13] ),
    .S(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0845_));
 sky130_fd_sc_hd__or2_1 _1381_ (.A(\MCU.IR.ir_data_in[5] ),
    .B(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0846_));
 sky130_fd_sc_hd__o211a_1 _1382_ (.A1(_0829_),
    .A2(_0845_),
    .B1(_0846_),
    .C1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0050_));
 sky130_fd_sc_hd__mux2_1 _1383_ (.A0(_0751_),
    .A1(\MCU.IR.ir_data_in[14] ),
    .S(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0847_));
 sky130_fd_sc_hd__or2_1 _1384_ (.A(\MCU.IR.ir_data_in[6] ),
    .B(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0848_));
 sky130_fd_sc_hd__o211a_1 _1385_ (.A1(_0829_),
    .A2(_0847_),
    .B1(_0848_),
    .C1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0051_));
 sky130_fd_sc_hd__mux2_1 _1386_ (.A0(_0777_),
    .A1(\MCU.IR.ir_data_in[15] ),
    .S(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0849_));
 sky130_fd_sc_hd__or2_1 _1387_ (.A(\MCU.IR.ir_data_in[7] ),
    .B(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0850_));
 sky130_fd_sc_hd__clkbuf_4 _1388_ (.A(_0523_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0851_));
 sky130_fd_sc_hd__o211a_1 _1389_ (.A1(_0829_),
    .A2(_0849_),
    .B1(_0850_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0052_));
 sky130_fd_sc_hd__xnor2_1 _1390_ (.A(\MCU.PERI.clock_div[0] ),
    .B(\MCU.PERI.div_val_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0852_));
 sky130_fd_sc_hd__xnor2_1 _1391_ (.A(\MCU.PERI.clock_div[1] ),
    .B(\MCU.PERI.div_val_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0853_));
 sky130_fd_sc_hd__xnor2_1 _1392_ (.A(\MCU.PERI.clock_div[3] ),
    .B(\MCU.PERI.div_val_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0854_));
 sky130_fd_sc_hd__xnor2_1 _1393_ (.A(\MCU.PERI.clock_div[2] ),
    .B(\MCU.PERI.div_val_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0855_));
 sky130_fd_sc_hd__and4_1 _1394_ (.A(_0852_),
    .B(_0853_),
    .C(_0854_),
    .D(_0855_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0856_));
 sky130_fd_sc_hd__and2_1 _1395_ (.A(\MCU.PERI.busy_flag ),
    .B(_0856_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0857_));
 sky130_fd_sc_hd__or2_1 _1396_ (.A(\MCU.PERI.sclk_out ),
    .B(_0857_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0858_));
 sky130_fd_sc_hd__and3_2 _1397_ (.A(\MCU.PERI.busy_flag ),
    .B(\MCU.PERI.sclk_out ),
    .C(_0856_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0859_));
 sky130_fd_sc_hd__inv_2 _1398_ (.A(_0859_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0860_));
 sky130_fd_sc_hd__and3_1 _1399_ (.A(_0523_),
    .B(_0858_),
    .C(_0860_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0861_));
 sky130_fd_sc_hd__clkbuf_1 _1400_ (.A(_0861_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0053_));
 sky130_fd_sc_hd__or2_1 _1401_ (.A(_0502_),
    .B(_0831_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0862_));
 sky130_fd_sc_hd__nand2_1 _1402_ (.A(\MCU.ALU.a_in[0] ),
    .B(_0531_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0863_));
 sky130_fd_sc_hd__or4b_1 _1403_ (.A(_0554_),
    .B(_0862_),
    .C(_0863_),
    .D_N(_0632_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0864_));
 sky130_fd_sc_hd__mux2_1 _1404_ (.A0(_0585_),
    .A1(\MCU.PERI.cs_out ),
    .S(_0864_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0865_));
 sky130_fd_sc_hd__or2_1 _1405_ (.A(_0532_),
    .B(_0865_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0866_));
 sky130_fd_sc_hd__clkbuf_1 _1406_ (.A(_0866_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0054_));
 sky130_fd_sc_hd__nor2_2 _1407_ (.A(_0502_),
    .B(_0831_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0867_));
 sky130_fd_sc_hd__and2_1 _1408_ (.A(\MCU.ALU.a_in[0] ),
    .B(_0531_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0868_));
 sky130_fd_sc_hd__and3b_1 _1409_ (.A_N(_0632_),
    .B(_0631_),
    .C(_0868_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0869_));
 sky130_fd_sc_hd__buf_2 _1410_ (.A(_0869_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0870_));
 sky130_fd_sc_hd__nand2_2 _1411_ (.A(_0867_),
    .B(_0870_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0871_));
 sky130_fd_sc_hd__and2_2 _1412_ (.A(_0867_),
    .B(_0870_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0872_));
 sky130_fd_sc_hd__or2_1 _1413_ (.A(uio_out[0]),
    .B(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0873_));
 sky130_fd_sc_hd__o211a_1 _1414_ (.A1(_0585_),
    .A2(_0871_),
    .B1(_0873_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0055_));
 sky130_fd_sc_hd__or2_1 _1415_ (.A(uio_out[1]),
    .B(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0874_));
 sky130_fd_sc_hd__o211a_1 _1416_ (.A1(net7),
    .A2(_0871_),
    .B1(_0874_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0056_));
 sky130_fd_sc_hd__or2_1 _1417_ (.A(uio_out[2]),
    .B(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0875_));
 sky130_fd_sc_hd__o211a_1 _1418_ (.A1(_0651_),
    .A2(_0871_),
    .B1(_0875_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0057_));
 sky130_fd_sc_hd__or2_1 _1419_ (.A(uio_out[3]),
    .B(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0876_));
 sky130_fd_sc_hd__o211a_1 _1420_ (.A1(_0675_),
    .A2(_0871_),
    .B1(_0876_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0058_));
 sky130_fd_sc_hd__or2_1 _1421_ (.A(uio_out[4]),
    .B(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0877_));
 sky130_fd_sc_hd__o211a_1 _1422_ (.A1(_0698_),
    .A2(_0871_),
    .B1(_0877_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0059_));
 sky130_fd_sc_hd__or2_1 _1423_ (.A(uio_out[5]),
    .B(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0878_));
 sky130_fd_sc_hd__o211a_1 _1424_ (.A1(_0733_),
    .A2(_0871_),
    .B1(_0878_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0060_));
 sky130_fd_sc_hd__or2_1 _1425_ (.A(uio_out[6]),
    .B(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0879_));
 sky130_fd_sc_hd__o211a_1 _1426_ (.A1(_0751_),
    .A2(_0871_),
    .B1(_0879_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0061_));
 sky130_fd_sc_hd__or2_1 _1427_ (.A(uio_out[7]),
    .B(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0880_));
 sky130_fd_sc_hd__o211a_1 _1428_ (.A1(_0777_),
    .A2(_0871_),
    .B1(_0880_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0062_));
 sky130_fd_sc_hd__mux2_2 _1429_ (.A0(\MCU.ALU.a_in[2] ),
    .A1(\MCU.PC.program_counter[1] ),
    .S(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0881_));
 sky130_fd_sc_hd__mux2_2 _1430_ (.A0(_0554_),
    .A1(\MCU.PC.program_counter[0] ),
    .S(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0882_));
 sky130_fd_sc_hd__inv_2 _1431_ (.A(_0882_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0883_));
 sky130_fd_sc_hd__and3b_1 _1432_ (.A_N(_0881_),
    .B(_0883_),
    .C(_0863_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0884_));
 sky130_fd_sc_hd__buf_2 _1433_ (.A(_0884_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0885_));
 sky130_fd_sc_hd__nand2_2 _1434_ (.A(_0867_),
    .B(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0886_));
 sky130_fd_sc_hd__mux2_1 _1435_ (.A0(_0585_),
    .A1(uio_oe[0]),
    .S(_0886_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0887_));
 sky130_fd_sc_hd__and2_1 _1436_ (.A(_0510_),
    .B(_0887_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0888_));
 sky130_fd_sc_hd__clkbuf_1 _1437_ (.A(_0888_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0063_));
 sky130_fd_sc_hd__mux2_1 _1438_ (.A0(net7),
    .A1(uio_oe[1]),
    .S(_0886_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0889_));
 sky130_fd_sc_hd__and2_1 _1439_ (.A(_0510_),
    .B(_0889_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0890_));
 sky130_fd_sc_hd__clkbuf_1 _1440_ (.A(_0890_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0064_));
 sky130_fd_sc_hd__mux2_1 _1441_ (.A0(_0651_),
    .A1(uio_oe[2]),
    .S(_0886_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0891_));
 sky130_fd_sc_hd__and2_1 _1442_ (.A(_0510_),
    .B(_0891_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0892_));
 sky130_fd_sc_hd__clkbuf_1 _1443_ (.A(_0892_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0065_));
 sky130_fd_sc_hd__mux2_1 _1444_ (.A0(_0675_),
    .A1(uio_oe[3]),
    .S(_0886_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0893_));
 sky130_fd_sc_hd__and2_1 _1445_ (.A(_0510_),
    .B(_0893_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0894_));
 sky130_fd_sc_hd__clkbuf_1 _1446_ (.A(_0894_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0066_));
 sky130_fd_sc_hd__nand2_1 _1447_ (.A(_0503_),
    .B(_0831_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0895_));
 sky130_fd_sc_hd__nor2_2 _1448_ (.A(_0502_),
    .B(_0895_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0896_));
 sky130_fd_sc_hd__and3b_1 _1449_ (.A_N(_0881_),
    .B(_0863_),
    .C(_0882_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0897_));
 sky130_fd_sc_hd__or2_2 _1450_ (.A(_0502_),
    .B(_0895_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0898_));
 sky130_fd_sc_hd__a221o_1 _1451_ (.A1(uio_oe[0]),
    .A2(_0885_),
    .B1(_0897_),
    .B2(\MCU.PERI.gpio_in_reg[0] ),
    .C1(_0898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0899_));
 sky130_fd_sc_hd__and3_1 _1452_ (.A(_0863_),
    .B(_0883_),
    .C(_0881_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0900_));
 sky130_fd_sc_hd__and3_2 _1453_ (.A(_0632_),
    .B(_0868_),
    .C(_0882_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0901_));
 sky130_fd_sc_hd__and4_1 _1454_ (.A(\MCU.PERI.busy_flag ),
    .B(_0863_),
    .C(_0882_),
    .D(_0881_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0902_));
 sky130_fd_sc_hd__a221o_1 _1455_ (.A1(uio_out[0]),
    .A2(_0870_),
    .B1(_0901_),
    .B2(\MCU.PERI.shift_reg[0] ),
    .C1(_0902_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0903_));
 sky130_fd_sc_hd__and4_1 _1456_ (.A(_0632_),
    .B(_0631_),
    .C(\MCU.PERI.cs_out ),
    .D(_0868_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0904_));
 sky130_fd_sc_hd__a211o_1 _1457_ (.A1(\MCU.PERI.div_val_reg[0] ),
    .A2(_0900_),
    .B1(_0903_),
    .C1(_0904_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0905_));
 sky130_fd_sc_hd__o221a_1 _1458_ (.A1(net55),
    .A2(_0896_),
    .B1(_0899_),
    .B2(_0905_),
    .C1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0067_));
 sky130_fd_sc_hd__a221o_1 _1459_ (.A1(uio_out[1]),
    .A2(_0870_),
    .B1(_0901_),
    .B2(\MCU.PERI.shift_reg[1] ),
    .C1(_0898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0906_));
 sky130_fd_sc_hd__a22o_1 _1460_ (.A1(\MCU.PERI.div_val_reg[1] ),
    .A2(_0900_),
    .B1(_0897_),
    .B2(\MCU.PERI.gpio_in_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0907_));
 sky130_fd_sc_hd__a21o_1 _1461_ (.A1(uio_oe[1]),
    .A2(_0885_),
    .B1(_0907_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0908_));
 sky130_fd_sc_hd__o221a_1 _1462_ (.A1(net103),
    .A2(_0896_),
    .B1(_0906_),
    .B2(_0908_),
    .C1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0068_));
 sky130_fd_sc_hd__a221o_1 _1463_ (.A1(uio_out[2]),
    .A2(_0870_),
    .B1(_0901_),
    .B2(\MCU.PERI.shift_reg[2] ),
    .C1(_0898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0909_));
 sky130_fd_sc_hd__a22o_1 _1464_ (.A1(uio_oe[2]),
    .A2(_0885_),
    .B1(_0897_),
    .B2(\MCU.PERI.gpio_in_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0910_));
 sky130_fd_sc_hd__a21o_1 _1465_ (.A1(\MCU.PERI.div_val_reg[2] ),
    .A2(_0900_),
    .B1(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0911_));
 sky130_fd_sc_hd__o221a_1 _1466_ (.A1(net52),
    .A2(_0896_),
    .B1(_0909_),
    .B2(_0911_),
    .C1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0069_));
 sky130_fd_sc_hd__a221o_1 _1467_ (.A1(uio_out[3]),
    .A2(_0870_),
    .B1(_0901_),
    .B2(\MCU.PERI.shift_reg[3] ),
    .C1(_0898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0912_));
 sky130_fd_sc_hd__a22o_1 _1468_ (.A1(uio_oe[3]),
    .A2(_0885_),
    .B1(_0897_),
    .B2(\MCU.PERI.gpio_in_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0913_));
 sky130_fd_sc_hd__a21o_1 _1469_ (.A1(\MCU.PERI.div_val_reg[3] ),
    .A2(_0900_),
    .B1(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0914_));
 sky130_fd_sc_hd__o221a_1 _1470_ (.A1(net44),
    .A2(_0896_),
    .B1(_0912_),
    .B2(_0914_),
    .C1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0070_));
 sky130_fd_sc_hd__a221o_1 _1471_ (.A1(uio_out[4]),
    .A2(_0870_),
    .B1(_0901_),
    .B2(\MCU.PERI.shift_reg[4] ),
    .C1(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0915_));
 sky130_fd_sc_hd__or2_1 _1472_ (.A(_0898_),
    .B(_0915_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0916_));
 sky130_fd_sc_hd__o211a_1 _1473_ (.A1(net27),
    .A2(_0896_),
    .B1(_0916_),
    .C1(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0071_));
 sky130_fd_sc_hd__a221o_1 _1474_ (.A1(uio_out[5]),
    .A2(_0870_),
    .B1(_0901_),
    .B2(\MCU.PERI.shift_reg[5] ),
    .C1(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0917_));
 sky130_fd_sc_hd__or2_1 _1475_ (.A(_0898_),
    .B(_0917_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0918_));
 sky130_fd_sc_hd__clkbuf_4 _1476_ (.A(_0523_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0919_));
 sky130_fd_sc_hd__o211a_1 _1477_ (.A1(net39),
    .A2(_0896_),
    .B1(_0918_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0072_));
 sky130_fd_sc_hd__a221o_1 _1478_ (.A1(uio_out[6]),
    .A2(_0870_),
    .B1(_0901_),
    .B2(\MCU.PERI.shift_reg[6] ),
    .C1(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0920_));
 sky130_fd_sc_hd__or2_1 _1479_ (.A(_0898_),
    .B(_0920_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0921_));
 sky130_fd_sc_hd__o211a_1 _1480_ (.A1(net42),
    .A2(_0896_),
    .B1(_0921_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0073_));
 sky130_fd_sc_hd__a221o_1 _1481_ (.A1(uio_out[7]),
    .A2(_0870_),
    .B1(_0901_),
    .B2(\MCU.PERI.mosi_out ),
    .C1(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0922_));
 sky130_fd_sc_hd__or2_1 _1482_ (.A(_0898_),
    .B(_0922_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0923_));
 sky130_fd_sc_hd__o211a_1 _1483_ (.A1(net30),
    .A2(_0896_),
    .B1(_0923_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0074_));
 sky130_fd_sc_hd__nor2_1 _1484_ (.A(_0532_),
    .B(_0898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0075_));
 sky130_fd_sc_hd__and2_1 _1485_ (.A(\MCU.PERI.clock_counter[0] ),
    .B(_0859_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0924_));
 sky130_fd_sc_hd__o21ai_1 _1486_ (.A1(net113),
    .A2(_0859_),
    .B1(_0510_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0925_));
 sky130_fd_sc_hd__nor2_1 _1487_ (.A(_0924_),
    .B(_0925_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0076_));
 sky130_fd_sc_hd__and3_1 _1488_ (.A(\MCU.PERI.clock_counter[1] ),
    .B(\MCU.PERI.clock_counter[0] ),
    .C(_0859_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0926_));
 sky130_fd_sc_hd__o21ai_1 _1489_ (.A1(net74),
    .A2(_0924_),
    .B1(_0510_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0927_));
 sky130_fd_sc_hd__nor2_1 _1490_ (.A(_0926_),
    .B(_0927_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0077_));
 sky130_fd_sc_hd__nand3_2 _1491_ (.A(\MCU.PERI.clock_counter[2] ),
    .B(\MCU.PERI.clock_counter[1] ),
    .C(\MCU.PERI.clock_counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0928_));
 sky130_fd_sc_hd__o221a_1 _1492_ (.A1(net48),
    .A2(_0926_),
    .B1(_0928_),
    .B2(_0860_),
    .C1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0078_));
 sky130_fd_sc_hd__nor2_1 _1493_ (.A(_0532_),
    .B(_0857_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0929_));
 sky130_fd_sc_hd__a21boi_1 _1494_ (.A1(net32),
    .A2(\MCU.PERI.clock_div[0] ),
    .B1_N(_0929_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0930_));
 sky130_fd_sc_hd__o21a_1 _1495_ (.A1(net32),
    .A2(\MCU.PERI.clock_div[0] ),
    .B1(_0930_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0079_));
 sky130_fd_sc_hd__nand3_1 _1496_ (.A(\MCU.PERI.busy_flag ),
    .B(\MCU.PERI.clock_div[1] ),
    .C(\MCU.PERI.clock_div[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0931_));
 sky130_fd_sc_hd__a21o_1 _1497_ (.A1(\MCU.PERI.busy_flag ),
    .A2(\MCU.PERI.clock_div[0] ),
    .B1(\MCU.PERI.clock_div[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0932_));
 sky130_fd_sc_hd__and3_1 _1498_ (.A(_0929_),
    .B(_0931_),
    .C(_0932_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0933_));
 sky130_fd_sc_hd__clkbuf_1 _1499_ (.A(_0933_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0080_));
 sky130_fd_sc_hd__inv_2 _1500_ (.A(\MCU.PERI.clock_div[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0934_));
 sky130_fd_sc_hd__or2_1 _1501_ (.A(_0934_),
    .B(_0931_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0935_));
 sky130_fd_sc_hd__nand2_1 _1502_ (.A(_0934_),
    .B(_0931_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0936_));
 sky130_fd_sc_hd__and3_1 _1503_ (.A(_0929_),
    .B(_0935_),
    .C(_0936_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0937_));
 sky130_fd_sc_hd__clkbuf_1 _1504_ (.A(_0937_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0081_));
 sky130_fd_sc_hd__inv_2 _1505_ (.A(\MCU.PERI.clock_div[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0938_));
 sky130_fd_sc_hd__nor2_1 _1506_ (.A(_0938_),
    .B(_0935_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0939_));
 sky130_fd_sc_hd__nand2_1 _1507_ (.A(_0938_),
    .B(_0935_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0940_));
 sky130_fd_sc_hd__and3b_1 _1508_ (.A_N(_0939_),
    .B(_0929_),
    .C(_0940_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0941_));
 sky130_fd_sc_hd__clkbuf_1 _1509_ (.A(_0941_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0082_));
 sky130_fd_sc_hd__nand2_4 _1510_ (.A(_0859_),
    .B(_0928_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0942_));
 sky130_fd_sc_hd__mux2_1 _1511_ (.A0(\MCU.PERI.mosi_out ),
    .A1(\MCU.PERI.shift_reg[0] ),
    .S(_0942_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0943_));
 sky130_fd_sc_hd__or3b_1 _1512_ (.A(\MCU.PERI.busy_flag ),
    .B(_0862_),
    .C_N(_0901_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0944_));
 sky130_fd_sc_hd__clkbuf_4 _1513_ (.A(_0944_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0945_));
 sky130_fd_sc_hd__mux2_1 _1514_ (.A0(_0585_),
    .A1(_0943_),
    .S(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0946_));
 sky130_fd_sc_hd__and2_1 _1515_ (.A(_0510_),
    .B(_0946_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0947_));
 sky130_fd_sc_hd__clkbuf_1 _1516_ (.A(_0947_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0083_));
 sky130_fd_sc_hd__mux2_1 _1517_ (.A0(\MCU.PERI.shift_reg[0] ),
    .A1(\MCU.PERI.shift_reg[1] ),
    .S(_0942_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0948_));
 sky130_fd_sc_hd__mux2_1 _1518_ (.A0(net7),
    .A1(_0948_),
    .S(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0949_));
 sky130_fd_sc_hd__and2_1 _1519_ (.A(_0510_),
    .B(_0949_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0950_));
 sky130_fd_sc_hd__clkbuf_1 _1520_ (.A(_0950_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0084_));
 sky130_fd_sc_hd__buf_2 _1521_ (.A(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0951_));
 sky130_fd_sc_hd__mux2_1 _1522_ (.A0(\MCU.PERI.shift_reg[1] ),
    .A1(\MCU.PERI.shift_reg[2] ),
    .S(_0942_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0952_));
 sky130_fd_sc_hd__mux2_1 _1523_ (.A0(_0651_),
    .A1(_0952_),
    .S(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0953_));
 sky130_fd_sc_hd__and2_1 _1524_ (.A(_0951_),
    .B(_0953_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0954_));
 sky130_fd_sc_hd__clkbuf_1 _1525_ (.A(_0954_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0085_));
 sky130_fd_sc_hd__mux2_1 _1526_ (.A0(\MCU.PERI.shift_reg[2] ),
    .A1(\MCU.PERI.shift_reg[3] ),
    .S(_0942_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0955_));
 sky130_fd_sc_hd__mux2_1 _1527_ (.A0(_0675_),
    .A1(_0955_),
    .S(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0956_));
 sky130_fd_sc_hd__and2_1 _1528_ (.A(_0951_),
    .B(_0956_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0957_));
 sky130_fd_sc_hd__clkbuf_1 _1529_ (.A(_0957_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0086_));
 sky130_fd_sc_hd__mux2_1 _1530_ (.A0(\MCU.PERI.shift_reg[3] ),
    .A1(\MCU.PERI.shift_reg[4] ),
    .S(_0942_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0958_));
 sky130_fd_sc_hd__mux2_1 _1531_ (.A0(_0698_),
    .A1(_0958_),
    .S(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0959_));
 sky130_fd_sc_hd__and2_1 _1532_ (.A(_0951_),
    .B(_0959_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0960_));
 sky130_fd_sc_hd__clkbuf_1 _1533_ (.A(_0960_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0087_));
 sky130_fd_sc_hd__mux2_1 _1534_ (.A0(\MCU.PERI.shift_reg[4] ),
    .A1(\MCU.PERI.shift_reg[5] ),
    .S(_0942_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0961_));
 sky130_fd_sc_hd__mux2_1 _1535_ (.A0(_0733_),
    .A1(_0961_),
    .S(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0962_));
 sky130_fd_sc_hd__and2_1 _1536_ (.A(_0951_),
    .B(_0962_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0963_));
 sky130_fd_sc_hd__clkbuf_1 _1537_ (.A(_0963_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0088_));
 sky130_fd_sc_hd__mux2_1 _1538_ (.A0(\MCU.PERI.shift_reg[5] ),
    .A1(\MCU.PERI.shift_reg[6] ),
    .S(_0942_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0964_));
 sky130_fd_sc_hd__mux2_1 _1539_ (.A0(_0751_),
    .A1(_0964_),
    .S(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0965_));
 sky130_fd_sc_hd__and2_1 _1540_ (.A(_0951_),
    .B(_0965_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0966_));
 sky130_fd_sc_hd__clkbuf_1 _1541_ (.A(_0966_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0089_));
 sky130_fd_sc_hd__mux2_1 _1542_ (.A0(\MCU.PERI.shift_reg[6] ),
    .A1(\MCU.PERI.mosi_out ),
    .S(_0942_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0967_));
 sky130_fd_sc_hd__mux2_1 _1543_ (.A0(_0777_),
    .A1(_0967_),
    .S(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0968_));
 sky130_fd_sc_hd__and2_1 _1544_ (.A(_0951_),
    .B(_0968_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0969_));
 sky130_fd_sc_hd__clkbuf_1 _1545_ (.A(_0969_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0090_));
 sky130_fd_sc_hd__and2_1 _1546_ (.A(_0514_),
    .B(_0504_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0970_));
 sky130_fd_sc_hd__a21oi_1 _1547_ (.A1(\MCU.SPI_CTRL.sclk_out ),
    .A2(_0496_),
    .B1(_0970_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0971_));
 sky130_fd_sc_hd__mux2_1 _1548_ (.A0(\MCU.IR.ir_data_in[0] ),
    .A1(net2),
    .S(_0971_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0972_));
 sky130_fd_sc_hd__and2_1 _1549_ (.A(_0951_),
    .B(_0972_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0973_));
 sky130_fd_sc_hd__clkbuf_1 _1550_ (.A(_0973_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0091_));
 sky130_fd_sc_hd__mux2_1 _1551_ (.A0(net116),
    .A1(_0868_),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0974_));
 sky130_fd_sc_hd__clkbuf_1 _1552_ (.A(_0974_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0092_));
 sky130_fd_sc_hd__mux2_1 _1553_ (.A0(net121),
    .A1(_0882_),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0975_));
 sky130_fd_sc_hd__clkbuf_1 _1554_ (.A(_0975_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0093_));
 sky130_fd_sc_hd__mux2_1 _1555_ (.A0(net125),
    .A1(_0881_),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0976_));
 sky130_fd_sc_hd__clkbuf_1 _1556_ (.A(_0976_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0094_));
 sky130_fd_sc_hd__clkbuf_4 _1557_ (.A(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0977_));
 sky130_fd_sc_hd__mux2_1 _1558_ (.A0(\MCU.ALU.a_in[3] ),
    .A1(\MCU.PC.program_counter[2] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0978_));
 sky130_fd_sc_hd__mux2_1 _1559_ (.A0(net132),
    .A1(_0978_),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0979_));
 sky130_fd_sc_hd__clkbuf_1 _1560_ (.A(_0979_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0095_));
 sky130_fd_sc_hd__mux2_1 _1561_ (.A0(\MCU.ALU.a_in[4] ),
    .A1(\MCU.PC.program_counter[3] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0206_));
 sky130_fd_sc_hd__mux2_1 _1562_ (.A0(net129),
    .A1(_0206_),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0207_));
 sky130_fd_sc_hd__clkbuf_1 _1563_ (.A(_0207_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0096_));
 sky130_fd_sc_hd__mux2_1 _1564_ (.A0(\MCU.ALU.a_in[5] ),
    .A1(\MCU.PC.program_counter[4] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0208_));
 sky130_fd_sc_hd__mux2_1 _1565_ (.A0(net115),
    .A1(_0208_),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0209_));
 sky130_fd_sc_hd__clkbuf_1 _1566_ (.A(_0209_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0097_));
 sky130_fd_sc_hd__mux2_1 _1567_ (.A0(\MCU.ALU.a_in[6] ),
    .A1(\MCU.PC.program_counter[5] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0210_));
 sky130_fd_sc_hd__mux2_1 _1568_ (.A0(net138),
    .A1(_0210_),
    .S(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0211_));
 sky130_fd_sc_hd__clkbuf_1 _1569_ (.A(_0211_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0098_));
 sky130_fd_sc_hd__mux2_1 _1570_ (.A0(\MCU.ALU.a_in[7] ),
    .A1(\MCU.PC.program_counter[6] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0212_));
 sky130_fd_sc_hd__mux2_1 _1571_ (.A0(net140),
    .A1(_0212_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0213_));
 sky130_fd_sc_hd__clkbuf_1 _1572_ (.A(_0213_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_1 _1573_ (.A0(_0551_),
    .A1(\MCU.PC.program_counter[7] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0214_));
 sky130_fd_sc_hd__mux2_1 _1574_ (.A0(\MCU.SPI_CTRL.addr_reg[8] ),
    .A1(_0214_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0215_));
 sky130_fd_sc_hd__clkbuf_1 _1575_ (.A(_0215_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0100_));
 sky130_fd_sc_hd__mux2_1 _1576_ (.A0(_0557_),
    .A1(\MCU.PC.program_counter[8] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0216_));
 sky130_fd_sc_hd__mux2_1 _1577_ (.A0(\MCU.SPI_CTRL.addr_reg[9] ),
    .A1(_0216_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0217_));
 sky130_fd_sc_hd__clkbuf_1 _1578_ (.A(_0217_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0101_));
 sky130_fd_sc_hd__mux2_1 _1579_ (.A0(_0556_),
    .A1(\MCU.PC.program_counter[9] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0218_));
 sky130_fd_sc_hd__mux2_1 _1580_ (.A0(net130),
    .A1(_0218_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0219_));
 sky130_fd_sc_hd__clkbuf_1 _1581_ (.A(_0219_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0102_));
 sky130_fd_sc_hd__mux2_1 _1582_ (.A0(_0555_),
    .A1(\MCU.PC.program_counter[10] ),
    .S(_0977_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0220_));
 sky130_fd_sc_hd__mux2_1 _1583_ (.A0(net127),
    .A1(_0220_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0221_));
 sky130_fd_sc_hd__clkbuf_1 _1584_ (.A(_0221_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0103_));
 sky130_fd_sc_hd__mux2_1 _1585_ (.A0(net122),
    .A1(_0501_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0222_));
 sky130_fd_sc_hd__clkbuf_1 _1586_ (.A(_0222_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0104_));
 sky130_fd_sc_hd__mux2_1 _1587_ (.A0(net53),
    .A1(_0498_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0223_));
 sky130_fd_sc_hd__clkbuf_1 _1588_ (.A(_0223_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0105_));
 sky130_fd_sc_hd__mux2_1 _1589_ (.A0(net89),
    .A1(_0499_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0224_));
 sky130_fd_sc_hd__clkbuf_1 _1590_ (.A(_0224_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0106_));
 sky130_fd_sc_hd__mux2_1 _1591_ (.A0(net81),
    .A1(_0500_),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0225_));
 sky130_fd_sc_hd__clkbuf_1 _1592_ (.A(_0225_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0107_));
 sky130_fd_sc_hd__o32a_1 _1593_ (.A1(_0497_),
    .A2(_0496_),
    .A3(_0830_),
    .B1(_0505_),
    .B2(_0517_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0226_));
 sky130_fd_sc_hd__or2_2 _1594_ (.A(_0517_),
    .B(_0825_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0227_));
 sky130_fd_sc_hd__inv_2 _1595_ (.A(_0227_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0228_));
 sky130_fd_sc_hd__a31o_1 _1596_ (.A1(_0518_),
    .A2(_0826_),
    .A3(_0226_),
    .B1(_0228_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0229_));
 sky130_fd_sc_hd__or4bb_4 _1597_ (.A(\MCU.SPI_CTRL.state[1] ),
    .B(_0512_),
    .C_N(_0513_),
    .D_N(_0517_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0230_));
 sky130_fd_sc_hd__or3_1 _1598_ (.A(\MCU.SPI_CTRL.mem_type[1] ),
    .B(\MCU.SPI_CTRL.mem_type[2] ),
    .C(_0227_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0231_));
 sky130_fd_sc_hd__nor2_1 _1599_ (.A(_0517_),
    .B(\MCU.SPI_CTRL.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0232_));
 sky130_fd_sc_hd__and3b_2 _1600_ (.A_N(_0512_),
    .B(_0513_),
    .C(_0232_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0233_));
 sky130_fd_sc_hd__a31o_1 _1601_ (.A1(_0229_),
    .A2(_0230_),
    .A3(_0231_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0234_));
 sky130_fd_sc_hd__nor3_1 _1602_ (.A(_0512_),
    .B(_0513_),
    .C(_0232_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0235_));
 sky130_fd_sc_hd__nor2_4 _1603_ (.A(_0520_),
    .B(net9),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0236_));
 sky130_fd_sc_hd__a22o_1 _1604_ (.A1(_0520_),
    .A2(_0226_),
    .B1(_0234_),
    .B2(_0236_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0237_));
 sky130_fd_sc_hd__and2_1 _1605_ (.A(_0951_),
    .B(_0237_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0238_));
 sky130_fd_sc_hd__clkbuf_1 _1606_ (.A(_0238_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0108_));
 sky130_fd_sc_hd__or2_1 _1607_ (.A(_0520_),
    .B(_0826_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0239_));
 sky130_fd_sc_hd__a31o_1 _1608_ (.A1(_0531_),
    .A2(_0502_),
    .A3(_0503_),
    .B1(_0496_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0240_));
 sky130_fd_sc_hd__a211o_1 _1609_ (.A1(_0517_),
    .A2(_0512_),
    .B1(_0513_),
    .C1(_0232_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0241_));
 sky130_fd_sc_hd__o22a_1 _1610_ (.A1(\MCU.SPI_CTRL.state[1] ),
    .A2(_0514_),
    .B1(_0520_),
    .B2(_0241_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0242_));
 sky130_fd_sc_hd__and2b_1 _1611_ (.A_N(\MCU.SPI_CTRL.mem_type[2] ),
    .B(\MCU.SPI_CTRL.mem_type[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0243_));
 sky130_fd_sc_hd__o21ai_1 _1612_ (.A1(_0227_),
    .A2(_0243_),
    .B1(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0244_));
 sky130_fd_sc_hd__a32o_1 _1613_ (.A1(_0239_),
    .A2(_0240_),
    .A3(_0242_),
    .B1(_0236_),
    .B2(_0244_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0245_));
 sky130_fd_sc_hd__and2_1 _1614_ (.A(_0951_),
    .B(_0245_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0246_));
 sky130_fd_sc_hd__clkbuf_1 _1615_ (.A(_0246_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0109_));
 sky130_fd_sc_hd__inv_2 _1616_ (.A(\MCU.SPI_CTRL.mem_type[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0247_));
 sky130_fd_sc_hd__a21oi_1 _1617_ (.A1(_0513_),
    .A2(_0247_),
    .B1(\MCU.SPI_CTRL.mem_type[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0248_));
 sky130_fd_sc_hd__nor3_1 _1618_ (.A(_0227_),
    .B(_0243_),
    .C(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0249_));
 sky130_fd_sc_hd__nor2_1 _1619_ (.A(_0235_),
    .B(_0249_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0250_));
 sky130_fd_sc_hd__o2bb2a_1 _1620_ (.A1_N(_0513_),
    .A2_N(_0239_),
    .B1(_0250_),
    .B2(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0251_));
 sky130_fd_sc_hd__nor2_1 _1621_ (.A(_0532_),
    .B(_0251_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0110_));
 sky130_fd_sc_hd__a21oi_1 _1622_ (.A1(_0517_),
    .A2(\MCU.SPI_CTRL.state[1] ),
    .B1(_0516_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0252_));
 sky130_fd_sc_hd__nor2_1 _1623_ (.A(_0249_),
    .B(_0252_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0253_));
 sky130_fd_sc_hd__o221a_1 _1624_ (.A1(_0512_),
    .A2(_0827_),
    .B1(_0253_),
    .B2(_0521_),
    .C1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0111_));
 sky130_fd_sc_hd__and4bb_2 _1625_ (.A_N(\MCU.SPI_CTRL.state[1] ),
    .B_N(_0512_),
    .C(_0513_),
    .D(_0517_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0254_));
 sky130_fd_sc_hd__nor3_1 _1626_ (.A(\MCU.SPI_CTRL.mem_type[1] ),
    .B(\MCU.SPI_CTRL.mem_type[2] ),
    .C(_0227_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0255_));
 sky130_fd_sc_hd__o21a_1 _1627_ (.A1(_0247_),
    .A2(\MCU.IR.ir_data_in[8] ),
    .B1(net8),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0256_));
 sky130_fd_sc_hd__and3_1 _1628_ (.A(\MCU.SPI_CTRL.mem_type[3] ),
    .B(\MCU.IR.ir_data_in[8] ),
    .C(net8),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0257_));
 sky130_fd_sc_hd__and3b_1 _1629_ (.A_N(_0519_),
    .B(\MCU.SPI_CTRL.sclk_out ),
    .C(_0496_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0258_));
 sky130_fd_sc_hd__clkbuf_4 _1630_ (.A(_0258_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0259_));
 sky130_fd_sc_hd__inv_2 _1631_ (.A(_0259_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0260_));
 sky130_fd_sc_hd__nor2_2 _1632_ (.A(_0505_),
    .B(_0259_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0261_));
 sky130_fd_sc_hd__inv_2 _1633_ (.A(_0261_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0262_));
 sky130_fd_sc_hd__o221a_1 _1634_ (.A1(\MCU.IR.ir_data_in[0] ),
    .A2(_0260_),
    .B1(_0262_),
    .B2(\MCU.IR.ir_data_in[1] ),
    .C1(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0263_));
 sky130_fd_sc_hd__o221a_1 _1635_ (.A1(_0826_),
    .A2(_0256_),
    .B1(_0257_),
    .B2(_0263_),
    .C1(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0264_));
 sky130_fd_sc_hd__a211o_1 _1636_ (.A1(\MCU.SPI_CTRL.addr_reg[0] ),
    .A2(_0254_),
    .B1(_0264_),
    .C1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0265_));
 sky130_fd_sc_hd__or3b_4 _1637_ (.A(_0495_),
    .B(_0512_),
    .C_N(_0513_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0266_));
 sky130_fd_sc_hd__or2_1 _1638_ (.A(\MCU.SPI_CTRL.addr_reg[8] ),
    .B(_0266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0267_));
 sky130_fd_sc_hd__a32o_1 _1639_ (.A1(_0236_),
    .A2(_0265_),
    .A3(_0267_),
    .B1(_0263_),
    .B2(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0268_));
 sky130_fd_sc_hd__and2_1 _1640_ (.A(_0951_),
    .B(_0268_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0269_));
 sky130_fd_sc_hd__clkbuf_1 _1641_ (.A(_0269_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0112_));
 sky130_fd_sc_hd__clkbuf_2 _1642_ (.A(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0270_));
 sky130_fd_sc_hd__mux2_1 _1643_ (.A0(\MCU.IR.ir_data_in[2] ),
    .A1(\MCU.IR.ir_data_in[1] ),
    .S(_0259_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0271_));
 sky130_fd_sc_hd__or2_1 _1644_ (.A(_0505_),
    .B(_0271_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0272_));
 sky130_fd_sc_hd__mux2_1 _1645_ (.A0(\MCU.IR.ir_data_in[9] ),
    .A1(_0272_),
    .S(_0247_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0273_));
 sky130_fd_sc_hd__a22o_1 _1646_ (.A1(_0825_),
    .A2(_0272_),
    .B1(_0273_),
    .B2(_0255_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0274_));
 sky130_fd_sc_hd__mux2_1 _1647_ (.A0(\MCU.SPI_CTRL.addr_reg[1] ),
    .A1(_0274_),
    .S(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0275_));
 sky130_fd_sc_hd__mux2_1 _1648_ (.A0(\MCU.SPI_CTRL.addr_reg[9] ),
    .A1(_0275_),
    .S(_0266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0276_));
 sky130_fd_sc_hd__a22o_1 _1649_ (.A1(_0520_),
    .A2(_0272_),
    .B1(_0276_),
    .B2(_0236_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0277_));
 sky130_fd_sc_hd__and2_1 _1650_ (.A(_0270_),
    .B(_0277_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0278_));
 sky130_fd_sc_hd__clkbuf_1 _1651_ (.A(_0278_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0113_));
 sky130_fd_sc_hd__o21a_1 _1652_ (.A1(_0247_),
    .A2(\MCU.IR.ir_data_in[10] ),
    .B1(net8),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0279_));
 sky130_fd_sc_hd__a22o_1 _1653_ (.A1(\MCU.IR.ir_data_in[2] ),
    .A2(_0259_),
    .B1(_0261_),
    .B2(\MCU.IR.ir_data_in[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0280_));
 sky130_fd_sc_hd__a21o_1 _1654_ (.A1(\MCU.SPI_CTRL.mem_type[3] ),
    .A2(_0279_),
    .B1(_0280_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0281_));
 sky130_fd_sc_hd__o21a_1 _1655_ (.A1(_0826_),
    .A2(_0279_),
    .B1(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0282_));
 sky130_fd_sc_hd__a221o_1 _1656_ (.A1(\MCU.SPI_CTRL.addr_reg[2] ),
    .A2(_0254_),
    .B1(_0281_),
    .B2(_0282_),
    .C1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0283_));
 sky130_fd_sc_hd__or2_1 _1657_ (.A(\MCU.SPI_CTRL.addr_reg[10] ),
    .B(_0266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0284_));
 sky130_fd_sc_hd__a32o_1 _1658_ (.A1(_0236_),
    .A2(_0283_),
    .A3(_0284_),
    .B1(_0280_),
    .B2(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0285_));
 sky130_fd_sc_hd__and2_1 _1659_ (.A(_0270_),
    .B(_0285_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0286_));
 sky130_fd_sc_hd__clkbuf_1 _1660_ (.A(_0286_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0114_));
 sky130_fd_sc_hd__o21a_1 _1661_ (.A1(_0247_),
    .A2(\MCU.IR.ir_data_in[11] ),
    .B1(_0255_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0287_));
 sky130_fd_sc_hd__a22o_1 _1662_ (.A1(\MCU.IR.ir_data_in[3] ),
    .A2(_0259_),
    .B1(_0261_),
    .B2(\MCU.IR.ir_data_in[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0288_));
 sky130_fd_sc_hd__a21o_1 _1663_ (.A1(\MCU.SPI_CTRL.mem_type[3] ),
    .A2(_0287_),
    .B1(_0288_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0289_));
 sky130_fd_sc_hd__o21a_1 _1664_ (.A1(_0826_),
    .A2(_0287_),
    .B1(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0290_));
 sky130_fd_sc_hd__a221o_1 _1665_ (.A1(\MCU.SPI_CTRL.addr_reg[3] ),
    .A2(_0254_),
    .B1(_0289_),
    .B2(_0290_),
    .C1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0291_));
 sky130_fd_sc_hd__or2_1 _1666_ (.A(\MCU.SPI_CTRL.addr_reg[11] ),
    .B(_0266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0292_));
 sky130_fd_sc_hd__a32o_1 _1667_ (.A1(_0236_),
    .A2(_0291_),
    .A3(_0292_),
    .B1(_0288_),
    .B2(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0293_));
 sky130_fd_sc_hd__and2_1 _1668_ (.A(_0270_),
    .B(_0293_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0294_));
 sky130_fd_sc_hd__clkbuf_1 _1669_ (.A(_0294_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0115_));
 sky130_fd_sc_hd__o21a_1 _1670_ (.A1(_0247_),
    .A2(\MCU.IR.ir_data_in[12] ),
    .B1(net8),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0295_));
 sky130_fd_sc_hd__a22o_1 _1671_ (.A1(\MCU.IR.ir_data_in[4] ),
    .A2(_0259_),
    .B1(_0261_),
    .B2(\MCU.IR.ir_data_in[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0296_));
 sky130_fd_sc_hd__a21o_1 _1672_ (.A1(\MCU.SPI_CTRL.mem_type[3] ),
    .A2(_0295_),
    .B1(_0296_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0297_));
 sky130_fd_sc_hd__o21a_1 _1673_ (.A1(_0826_),
    .A2(_0295_),
    .B1(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0298_));
 sky130_fd_sc_hd__a221o_1 _1674_ (.A1(\MCU.SPI_CTRL.addr_reg[4] ),
    .A2(_0254_),
    .B1(_0297_),
    .B2(_0298_),
    .C1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0299_));
 sky130_fd_sc_hd__or2_1 _1675_ (.A(\MCU.SPI_CTRL.addr_reg[12] ),
    .B(_0266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0300_));
 sky130_fd_sc_hd__a32o_1 _1676_ (.A1(_0236_),
    .A2(_0299_),
    .A3(_0300_),
    .B1(_0296_),
    .B2(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0301_));
 sky130_fd_sc_hd__and2_1 _1677_ (.A(_0270_),
    .B(_0301_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0302_));
 sky130_fd_sc_hd__clkbuf_1 _1678_ (.A(_0302_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0116_));
 sky130_fd_sc_hd__inv_2 _1679_ (.A(\MCU.IR.ir_data_in[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0303_));
 sky130_fd_sc_hd__a21oi_1 _1680_ (.A1(\MCU.SPI_CTRL.mem_type[3] ),
    .A2(_0303_),
    .B1(_0231_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0304_));
 sky130_fd_sc_hd__a22o_1 _1681_ (.A1(\MCU.IR.ir_data_in[5] ),
    .A2(_0259_),
    .B1(_0261_),
    .B2(\MCU.IR.ir_data_in[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0305_));
 sky130_fd_sc_hd__a21o_1 _1682_ (.A1(\MCU.SPI_CTRL.mem_type[3] ),
    .A2(_0304_),
    .B1(_0305_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0306_));
 sky130_fd_sc_hd__o21a_1 _1683_ (.A1(_0826_),
    .A2(_0304_),
    .B1(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0307_));
 sky130_fd_sc_hd__a221o_1 _1684_ (.A1(\MCU.SPI_CTRL.addr_reg[5] ),
    .A2(_0254_),
    .B1(_0306_),
    .B2(_0307_),
    .C1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0308_));
 sky130_fd_sc_hd__or2_1 _1685_ (.A(\MCU.SPI_CTRL.addr_reg[13] ),
    .B(_0266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0309_));
 sky130_fd_sc_hd__a32o_1 _1686_ (.A1(_0236_),
    .A2(_0308_),
    .A3(_0309_),
    .B1(_0305_),
    .B2(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0310_));
 sky130_fd_sc_hd__and2_1 _1687_ (.A(_0270_),
    .B(_0310_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0311_));
 sky130_fd_sc_hd__clkbuf_1 _1688_ (.A(_0311_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0117_));
 sky130_fd_sc_hd__o21a_1 _1689_ (.A1(_0247_),
    .A2(\MCU.IR.ir_data_in[14] ),
    .B1(net8),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0312_));
 sky130_fd_sc_hd__a22o_1 _1690_ (.A1(\MCU.IR.ir_data_in[6] ),
    .A2(_0259_),
    .B1(_0261_),
    .B2(\MCU.IR.ir_data_in[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0313_));
 sky130_fd_sc_hd__a21o_1 _1691_ (.A1(\MCU.SPI_CTRL.mem_type[3] ),
    .A2(_0312_),
    .B1(_0313_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0314_));
 sky130_fd_sc_hd__o21a_1 _1692_ (.A1(_0826_),
    .A2(_0312_),
    .B1(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0315_));
 sky130_fd_sc_hd__a221o_1 _1693_ (.A1(\MCU.SPI_CTRL.addr_reg[6] ),
    .A2(_0254_),
    .B1(_0314_),
    .B2(_0315_),
    .C1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0316_));
 sky130_fd_sc_hd__or2_1 _1694_ (.A(\MCU.SPI_CTRL.addr_reg[14] ),
    .B(_0266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0317_));
 sky130_fd_sc_hd__a32o_1 _1695_ (.A1(_0236_),
    .A2(_0316_),
    .A3(_0317_),
    .B1(_0313_),
    .B2(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0318_));
 sky130_fd_sc_hd__and2_1 _1696_ (.A(_0270_),
    .B(_0318_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0319_));
 sky130_fd_sc_hd__clkbuf_1 _1697_ (.A(_0319_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0118_));
 sky130_fd_sc_hd__o21a_1 _1698_ (.A1(_0247_),
    .A2(\MCU.IR.ir_data_in[15] ),
    .B1(net8),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0320_));
 sky130_fd_sc_hd__a22o_1 _1699_ (.A1(\MCU.IR.ir_data_in[7] ),
    .A2(_0259_),
    .B1(_0261_),
    .B2(\MCU.SPI_CTRL.mosi_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0321_));
 sky130_fd_sc_hd__a21o_1 _1700_ (.A1(\MCU.SPI_CTRL.mem_type[3] ),
    .A2(_0320_),
    .B1(_0321_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0322_));
 sky130_fd_sc_hd__o21a_1 _1701_ (.A1(_0826_),
    .A2(_0320_),
    .B1(_0230_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0323_));
 sky130_fd_sc_hd__a221o_1 _1702_ (.A1(\MCU.SPI_CTRL.addr_reg[7] ),
    .A2(_0254_),
    .B1(_0322_),
    .B2(_0323_),
    .C1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0324_));
 sky130_fd_sc_hd__or2_1 _1703_ (.A(\MCU.SPI_CTRL.addr_reg[15] ),
    .B(_0266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0325_));
 sky130_fd_sc_hd__a32o_1 _1704_ (.A1(_0236_),
    .A2(_0324_),
    .A3(_0325_),
    .B1(_0321_),
    .B2(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0326_));
 sky130_fd_sc_hd__and2_1 _1705_ (.A(_0270_),
    .B(_0326_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0327_));
 sky130_fd_sc_hd__clkbuf_1 _1706_ (.A(_0327_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0119_));
 sky130_fd_sc_hd__nand2_2 _1707_ (.A(_0602_),
    .B(_0603_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0328_));
 sky130_fd_sc_hd__nor2_4 _1708_ (.A(_0791_),
    .B(_0328_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0329_));
 sky130_fd_sc_hd__mux2_1 _1709_ (.A0(net126),
    .A1(_0600_),
    .S(_0329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0330_));
 sky130_fd_sc_hd__clkbuf_1 _1710_ (.A(_0330_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0120_));
 sky130_fd_sc_hd__mux2_1 _1711_ (.A0(net63),
    .A1(_0639_),
    .S(_0329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0331_));
 sky130_fd_sc_hd__clkbuf_1 _1712_ (.A(_0331_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0121_));
 sky130_fd_sc_hd__mux2_1 _1713_ (.A0(net101),
    .A1(_0664_),
    .S(_0329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0332_));
 sky130_fd_sc_hd__clkbuf_1 _1714_ (.A(_0332_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0122_));
 sky130_fd_sc_hd__mux2_1 _1715_ (.A0(net75),
    .A1(_0687_),
    .S(_0329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0333_));
 sky130_fd_sc_hd__clkbuf_1 _1716_ (.A(_0333_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0123_));
 sky130_fd_sc_hd__mux2_1 _1717_ (.A0(net50),
    .A1(_0710_),
    .S(_0329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0334_));
 sky130_fd_sc_hd__clkbuf_1 _1718_ (.A(_0334_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0124_));
 sky130_fd_sc_hd__mux2_1 _1719_ (.A0(net104),
    .A1(_0740_),
    .S(_0329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0335_));
 sky130_fd_sc_hd__clkbuf_1 _1720_ (.A(_0335_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0125_));
 sky130_fd_sc_hd__mux2_1 _1721_ (.A0(net96),
    .A1(_0765_),
    .S(_0329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0336_));
 sky130_fd_sc_hd__clkbuf_1 _1722_ (.A(_0336_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0126_));
 sky130_fd_sc_hd__mux2_1 _1723_ (.A0(net47),
    .A1(_0788_),
    .S(_0329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0337_));
 sky130_fd_sc_hd__clkbuf_1 _1724_ (.A(_0337_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0127_));
 sky130_fd_sc_hd__or2b_2 _1725_ (.A(_0602_),
    .B_N(_0603_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0338_));
 sky130_fd_sc_hd__nor2_4 _1726_ (.A(_0791_),
    .B(_0338_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0339_));
 sky130_fd_sc_hd__mux2_1 _1727_ (.A0(net105),
    .A1(_0600_),
    .S(_0339_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0340_));
 sky130_fd_sc_hd__clkbuf_1 _1728_ (.A(_0340_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0128_));
 sky130_fd_sc_hd__mux2_1 _1729_ (.A0(net79),
    .A1(_0639_),
    .S(_0339_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0341_));
 sky130_fd_sc_hd__clkbuf_1 _1730_ (.A(_0341_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0129_));
 sky130_fd_sc_hd__mux2_1 _1731_ (.A0(net56),
    .A1(_0664_),
    .S(_0339_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0342_));
 sky130_fd_sc_hd__clkbuf_1 _1732_ (.A(_0342_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_1 _1733_ (.A0(net68),
    .A1(_0687_),
    .S(_0339_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0343_));
 sky130_fd_sc_hd__clkbuf_1 _1734_ (.A(_0343_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0131_));
 sky130_fd_sc_hd__mux2_1 _1735_ (.A0(net95),
    .A1(_0710_),
    .S(_0339_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0344_));
 sky130_fd_sc_hd__clkbuf_1 _1736_ (.A(_0344_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_1 _1737_ (.A0(net66),
    .A1(_0740_),
    .S(_0339_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0345_));
 sky130_fd_sc_hd__clkbuf_1 _1738_ (.A(_0345_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0133_));
 sky130_fd_sc_hd__mux2_1 _1739_ (.A0(net100),
    .A1(_0765_),
    .S(_0339_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0346_));
 sky130_fd_sc_hd__clkbuf_1 _1740_ (.A(_0346_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0134_));
 sky130_fd_sc_hd__mux2_1 _1741_ (.A0(net109),
    .A1(_0788_),
    .S(_0339_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0347_));
 sky130_fd_sc_hd__clkbuf_1 _1742_ (.A(_0347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0135_));
 sky130_fd_sc_hd__nand2_1 _1743_ (.A(\MCU.PERI.sclk_out ),
    .B(_0856_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0348_));
 sky130_fd_sc_hd__o21ai_1 _1744_ (.A1(_0348_),
    .A2(_0928_),
    .B1(net32),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0349_));
 sky130_fd_sc_hd__a21oi_1 _1745_ (.A1(_0945_),
    .A2(_0349_),
    .B1(_0532_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0136_));
 sky130_fd_sc_hd__a211o_1 _1746_ (.A1(net19),
    .A2(_0240_),
    .B1(_0970_),
    .C1(_0532_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0137_));
 sky130_fd_sc_hd__o21a_1 _1747_ (.A1(_0977_),
    .A2(_0496_),
    .B1(\MCU.SPI_CTRL.psram_cs_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0350_));
 sky130_fd_sc_hd__or3_1 _1748_ (.A(_0532_),
    .B(_0970_),
    .C(_0350_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0351_));
 sky130_fd_sc_hd__clkbuf_1 _1749_ (.A(_0351_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0138_));
 sky130_fd_sc_hd__and2b_1 _1750_ (.A_N(\MCU.SPI_CTRL.sclk_out ),
    .B(_0515_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0352_));
 sky130_fd_sc_hd__clkbuf_1 _1751_ (.A(_0352_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0139_));
 sky130_fd_sc_hd__o21ai_1 _1752_ (.A1(\MCU.SPI_CTRL.sclk_out ),
    .A2(net36),
    .B1(_0515_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0353_));
 sky130_fd_sc_hd__a21oi_1 _1753_ (.A1(\MCU.SPI_CTRL.sclk_out ),
    .A2(net36),
    .B1(_0353_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0140_));
 sky130_fd_sc_hd__nand3_1 _1754_ (.A(\MCU.SPI_CTRL.sclk_out ),
    .B(\MCU.SPI_CTRL.clock_counter[1] ),
    .C(\MCU.SPI_CTRL.clock_counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0354_));
 sky130_fd_sc_hd__a21o_1 _1755_ (.A1(\MCU.SPI_CTRL.sclk_out ),
    .A2(\MCU.SPI_CTRL.clock_counter[0] ),
    .B1(\MCU.SPI_CTRL.clock_counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0355_));
 sky130_fd_sc_hd__and3_1 _1756_ (.A(_0515_),
    .B(_0354_),
    .C(_0355_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0356_));
 sky130_fd_sc_hd__clkbuf_1 _1757_ (.A(_0356_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0141_));
 sky130_fd_sc_hd__inv_2 _1758_ (.A(\MCU.SPI_CTRL.clock_counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0357_));
 sky130_fd_sc_hd__nand2_1 _1759_ (.A(_0357_),
    .B(_0354_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0358_));
 sky130_fd_sc_hd__or2_1 _1760_ (.A(_0357_),
    .B(_0354_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0359_));
 sky130_fd_sc_hd__and3_1 _1761_ (.A(_0515_),
    .B(_0358_),
    .C(_0359_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0360_));
 sky130_fd_sc_hd__clkbuf_1 _1762_ (.A(_0360_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0142_));
 sky130_fd_sc_hd__and3_1 _1763_ (.A(net124),
    .B(_0515_),
    .C(_0359_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0361_));
 sky130_fd_sc_hd__clkbuf_1 _1764_ (.A(_0361_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0143_));
 sky130_fd_sc_hd__nor2_4 _1765_ (.A(_0607_),
    .B(_0338_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0362_));
 sky130_fd_sc_hd__mux2_1 _1766_ (.A0(net78),
    .A1(_0600_),
    .S(_0362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0363_));
 sky130_fd_sc_hd__clkbuf_1 _1767_ (.A(_0363_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_1 _1768_ (.A0(net137),
    .A1(_0639_),
    .S(_0362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0364_));
 sky130_fd_sc_hd__clkbuf_1 _1769_ (.A(_0364_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0145_));
 sky130_fd_sc_hd__mux2_1 _1770_ (.A0(net93),
    .A1(_0664_),
    .S(_0362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0365_));
 sky130_fd_sc_hd__clkbuf_1 _1771_ (.A(_0365_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0146_));
 sky130_fd_sc_hd__mux2_1 _1772_ (.A0(net71),
    .A1(_0687_),
    .S(_0362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0366_));
 sky130_fd_sc_hd__clkbuf_1 _1773_ (.A(_0366_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0147_));
 sky130_fd_sc_hd__mux2_1 _1774_ (.A0(net92),
    .A1(_0710_),
    .S(_0362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0367_));
 sky130_fd_sc_hd__clkbuf_1 _1775_ (.A(_0367_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0148_));
 sky130_fd_sc_hd__mux2_1 _1776_ (.A0(net120),
    .A1(_0740_),
    .S(_0362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0368_));
 sky130_fd_sc_hd__clkbuf_1 _1777_ (.A(_0368_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0149_));
 sky130_fd_sc_hd__mux2_1 _1778_ (.A0(net70),
    .A1(_0765_),
    .S(_0362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0369_));
 sky130_fd_sc_hd__clkbuf_1 _1779_ (.A(_0369_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0150_));
 sky130_fd_sc_hd__mux2_1 _1780_ (.A0(net45),
    .A1(_0788_),
    .S(_0362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0370_));
 sky130_fd_sc_hd__clkbuf_1 _1781_ (.A(_0370_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0151_));
 sky130_fd_sc_hd__a22o_1 _1782_ (.A1(\MCU.ALU.status_in[0] ),
    .A2(_0551_),
    .B1(\MCU.ALU.ovf_in ),
    .B2(_0557_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0371_));
 sky130_fd_sc_hd__a221o_1 _1783_ (.A1(\MCU.ALU.status_in[2] ),
    .A2(_0556_),
    .B1(\MCU.ALU.carry_in ),
    .B2(_0555_),
    .C1(_0371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0372_));
 sky130_fd_sc_hd__xnor2_1 _1784_ (.A(\MCU.ID.inst_in[8] ),
    .B(_0372_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0373_));
 sky130_fd_sc_hd__a21oi_1 _1785_ (.A1(\MCU.CPU_SEQ.imm_type_in[0] ),
    .A2(_0543_),
    .B1(net23),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0374_));
 sky130_fd_sc_hd__a311oi_1 _1786_ (.A1(\MCU.CPU_SEQ.imm_type_in[0] ),
    .A2(_0543_),
    .A3(_0373_),
    .B1(_0374_),
    .C1(_0532_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0152_));
 sky130_fd_sc_hd__o21a_1 _1787_ (.A1(_0558_),
    .A2(_0822_),
    .B1(net128),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0375_));
 sky130_fd_sc_hd__nor2_1 _1788_ (.A(_0558_),
    .B(_0822_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0376_));
 sky130_fd_sc_hd__o2111a_1 _1789_ (.A1(_0769_),
    .A2(_0780_),
    .B1(_0819_),
    .C1(_0376_),
    .D1(_0593_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0377_));
 sky130_fd_sc_hd__o21a_1 _1790_ (.A1(_0375_),
    .A2(_0377_),
    .B1(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0153_));
 sky130_fd_sc_hd__nor2_4 _1791_ (.A(_0607_),
    .B(_0328_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0378_));
 sky130_fd_sc_hd__mux2_1 _1792_ (.A0(net85),
    .A1(_0600_),
    .S(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0379_));
 sky130_fd_sc_hd__clkbuf_1 _1793_ (.A(_0379_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0154_));
 sky130_fd_sc_hd__mux2_1 _1794_ (.A0(net90),
    .A1(_0639_),
    .S(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0380_));
 sky130_fd_sc_hd__clkbuf_1 _1795_ (.A(_0380_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_1 _1796_ (.A0(net54),
    .A1(_0664_),
    .S(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0381_));
 sky130_fd_sc_hd__clkbuf_1 _1797_ (.A(_0381_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_1 _1798_ (.A0(net72),
    .A1(_0687_),
    .S(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0382_));
 sky130_fd_sc_hd__clkbuf_1 _1799_ (.A(_0382_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0157_));
 sky130_fd_sc_hd__mux2_1 _1800_ (.A0(net80),
    .A1(_0710_),
    .S(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0383_));
 sky130_fd_sc_hd__clkbuf_1 _1801_ (.A(_0383_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0158_));
 sky130_fd_sc_hd__mux2_1 _1802_ (.A0(net112),
    .A1(_0740_),
    .S(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0384_));
 sky130_fd_sc_hd__clkbuf_1 _1803_ (.A(_0384_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0159_));
 sky130_fd_sc_hd__mux2_1 _1804_ (.A0(net67),
    .A1(_0765_),
    .S(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0385_));
 sky130_fd_sc_hd__clkbuf_1 _1805_ (.A(_0385_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0160_));
 sky130_fd_sc_hd__mux2_1 _1806_ (.A0(net43),
    .A1(_0788_),
    .S(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0386_));
 sky130_fd_sc_hd__clkbuf_1 _1807_ (.A(_0386_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0161_));
 sky130_fd_sc_hd__and3_2 _1808_ (.A(net1),
    .B(_0867_),
    .C(_0900_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0387_));
 sky130_fd_sc_hd__mux2_1 _1809_ (.A0(\MCU.PERI.div_val_reg[0] ),
    .A1(_0585_),
    .S(_0387_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0388_));
 sky130_fd_sc_hd__clkbuf_1 _1810_ (.A(_0388_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0162_));
 sky130_fd_sc_hd__mux2_1 _1811_ (.A0(\MCU.PERI.div_val_reg[1] ),
    .A1(net7),
    .S(_0387_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0389_));
 sky130_fd_sc_hd__clkbuf_1 _1812_ (.A(_0389_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0163_));
 sky130_fd_sc_hd__mux2_1 _1813_ (.A0(\MCU.PERI.div_val_reg[2] ),
    .A1(_0651_),
    .S(_0387_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0390_));
 sky130_fd_sc_hd__clkbuf_1 _1814_ (.A(_0390_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0164_));
 sky130_fd_sc_hd__mux2_1 _1815_ (.A0(\MCU.PERI.div_val_reg[3] ),
    .A1(_0675_),
    .S(_0387_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0391_));
 sky130_fd_sc_hd__clkbuf_1 _1816_ (.A(_0391_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0165_));
 sky130_fd_sc_hd__or2_1 _1817_ (.A(_0539_),
    .B(\MCU.ALU.a_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0392_));
 sky130_fd_sc_hd__o211a_1 _1818_ (.A1(_0542_),
    .A2(_0585_),
    .B1(_0392_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0166_));
 sky130_fd_sc_hd__or2_1 _1819_ (.A(_0539_),
    .B(_0554_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0393_));
 sky130_fd_sc_hd__o211a_1 _1820_ (.A1(_0542_),
    .A2(_0622_),
    .B1(_0393_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0167_));
 sky130_fd_sc_hd__or2_1 _1821_ (.A(_0539_),
    .B(_0632_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0394_));
 sky130_fd_sc_hd__o211a_1 _1822_ (.A1(_0542_),
    .A2(_0651_),
    .B1(_0394_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0168_));
 sky130_fd_sc_hd__or2_1 _1823_ (.A(_0539_),
    .B(\MCU.ALU.a_in[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0395_));
 sky130_fd_sc_hd__o211a_1 _1824_ (.A1(_0542_),
    .A2(_0675_),
    .B1(_0395_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0169_));
 sky130_fd_sc_hd__or2_1 _1825_ (.A(_0539_),
    .B(\MCU.ALU.a_in[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0396_));
 sky130_fd_sc_hd__o211a_1 _1826_ (.A1(_0542_),
    .A2(_0698_),
    .B1(_0396_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0170_));
 sky130_fd_sc_hd__or2_1 _1827_ (.A(_0539_),
    .B(\MCU.ALU.a_in[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0397_));
 sky130_fd_sc_hd__o211a_1 _1828_ (.A1(_0542_),
    .A2(_0733_),
    .B1(_0397_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0171_));
 sky130_fd_sc_hd__or2_1 _1829_ (.A(_0539_),
    .B(\MCU.ALU.a_in[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0398_));
 sky130_fd_sc_hd__o211a_1 _1830_ (.A1(_0542_),
    .A2(_0751_),
    .B1(_0398_),
    .C1(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0172_));
 sky130_fd_sc_hd__or2_1 _1831_ (.A(\MCU.ALU.a_in[7] ),
    .B(_0539_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0399_));
 sky130_fd_sc_hd__o211a_1 _1832_ (.A1(_0542_),
    .A2(_0777_),
    .B1(_0399_),
    .C1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0173_));
 sky130_fd_sc_hd__and4_1 _1833_ (.A(\MCU.CPU_SEQ.inst_type_in[1] ),
    .B(\MCU.CPU_SEQ.inst_type_in[0] ),
    .C(\MCU.CPU_SEQ.imm_type_in[1] ),
    .D(\MCU.CPU_SEQ.imm_type_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0400_));
 sky130_fd_sc_hd__or4_1 _1834_ (.A(_0495_),
    .B(_0516_),
    .C(_0520_),
    .D(_0400_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0401_));
 sky130_fd_sc_hd__o21ba_2 _1835_ (.A1(\MCU.IR.cond_in ),
    .A2(_0303_),
    .B1_N(_0401_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0402_));
 sky130_fd_sc_hd__buf_2 _1836_ (.A(_0402_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0403_));
 sky130_fd_sc_hd__a22o_1 _1837_ (.A1(_0551_),
    .A2(_0530_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0404_));
 sky130_fd_sc_hd__and2_1 _1838_ (.A(_0270_),
    .B(_0404_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0405_));
 sky130_fd_sc_hd__clkbuf_1 _1839_ (.A(_0405_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0174_));
 sky130_fd_sc_hd__a22o_1 _1840_ (.A1(_0557_),
    .A2(_0530_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0406_));
 sky130_fd_sc_hd__and2_1 _1841_ (.A(_0270_),
    .B(_0406_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0407_));
 sky130_fd_sc_hd__clkbuf_1 _1842_ (.A(_0407_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0175_));
 sky130_fd_sc_hd__a22o_1 _1843_ (.A1(_0556_),
    .A2(_0530_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0408_));
 sky130_fd_sc_hd__and2_1 _1844_ (.A(_0270_),
    .B(_0408_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0409_));
 sky130_fd_sc_hd__clkbuf_1 _1845_ (.A(_0409_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0176_));
 sky130_fd_sc_hd__clkbuf_2 _1846_ (.A(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0410_));
 sky130_fd_sc_hd__a22o_1 _1847_ (.A1(_0555_),
    .A2(_0530_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0411_));
 sky130_fd_sc_hd__and2_1 _1848_ (.A(_0410_),
    .B(_0411_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0412_));
 sky130_fd_sc_hd__clkbuf_1 _1849_ (.A(_0412_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0177_));
 sky130_fd_sc_hd__a22o_1 _1850_ (.A1(\MCU.ID.imm_out[4] ),
    .A2(_0530_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0413_));
 sky130_fd_sc_hd__and2_1 _1851_ (.A(_0410_),
    .B(_0413_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0414_));
 sky130_fd_sc_hd__clkbuf_1 _1852_ (.A(_0414_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0178_));
 sky130_fd_sc_hd__a22o_1 _1853_ (.A1(\MCU.ID.dst_addr_out[0] ),
    .A2(_0530_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0415_));
 sky130_fd_sc_hd__and2_1 _1854_ (.A(_0410_),
    .B(_0415_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0416_));
 sky130_fd_sc_hd__clkbuf_1 _1855_ (.A(_0416_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0179_));
 sky130_fd_sc_hd__a22o_1 _1856_ (.A1(\MCU.ID.dst_addr_out[1] ),
    .A2(_0530_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0417_));
 sky130_fd_sc_hd__and2_1 _1857_ (.A(_0410_),
    .B(_0417_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0418_));
 sky130_fd_sc_hd__clkbuf_1 _1858_ (.A(_0418_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0180_));
 sky130_fd_sc_hd__a22o_1 _1859_ (.A1(\MCU.ID.dst_addr_out[2] ),
    .A2(_0529_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0419_));
 sky130_fd_sc_hd__and2_1 _1860_ (.A(_0410_),
    .B(_0419_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0420_));
 sky130_fd_sc_hd__clkbuf_1 _1861_ (.A(_0420_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0181_));
 sky130_fd_sc_hd__a22o_1 _1862_ (.A1(\MCU.ID.inst_in[8] ),
    .A2(_0529_),
    .B1(_0403_),
    .B2(\MCU.IR.ir_data_in[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0421_));
 sky130_fd_sc_hd__and2_1 _1863_ (.A(_0410_),
    .B(_0421_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0422_));
 sky130_fd_sc_hd__clkbuf_1 _1864_ (.A(_0422_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0182_));
 sky130_fd_sc_hd__a22o_1 _1865_ (.A1(\MCU.ID.inst_in[9] ),
    .A2(_0529_),
    .B1(_0402_),
    .B2(\MCU.IR.ir_data_in[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0423_));
 sky130_fd_sc_hd__and2_1 _1866_ (.A(_0410_),
    .B(_0423_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0424_));
 sky130_fd_sc_hd__clkbuf_1 _1867_ (.A(_0424_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0183_));
 sky130_fd_sc_hd__a22o_1 _1868_ (.A1(\MCU.ID.inst_in[10] ),
    .A2(_0529_),
    .B1(_0402_),
    .B2(\MCU.IR.ir_data_in[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0425_));
 sky130_fd_sc_hd__and2_1 _1869_ (.A(_0410_),
    .B(_0425_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0426_));
 sky130_fd_sc_hd__clkbuf_1 _1870_ (.A(_0426_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0184_));
 sky130_fd_sc_hd__a22o_1 _1871_ (.A1(\MCU.CPU_SEQ.imm_type_in[0] ),
    .A2(_0529_),
    .B1(_0402_),
    .B2(\MCU.IR.ir_data_in[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0427_));
 sky130_fd_sc_hd__and2_1 _1872_ (.A(_0410_),
    .B(_0427_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0428_));
 sky130_fd_sc_hd__clkbuf_1 _1873_ (.A(_0428_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0185_));
 sky130_fd_sc_hd__a22o_1 _1874_ (.A1(\MCU.CPU_SEQ.imm_type_in[1] ),
    .A2(_0529_),
    .B1(_0402_),
    .B2(\MCU.IR.ir_data_in[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0429_));
 sky130_fd_sc_hd__and2_1 _1875_ (.A(_0410_),
    .B(_0429_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0430_));
 sky130_fd_sc_hd__clkbuf_1 _1876_ (.A(_0430_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0186_));
 sky130_fd_sc_hd__a22o_1 _1877_ (.A1(\MCU.CPU_SEQ.inst_type_in[0] ),
    .A2(_0529_),
    .B1(_0402_),
    .B2(\MCU.IR.ir_data_in[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0431_));
 sky130_fd_sc_hd__and2_1 _1878_ (.A(_0523_),
    .B(_0431_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0432_));
 sky130_fd_sc_hd__clkbuf_1 _1879_ (.A(_0432_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0187_));
 sky130_fd_sc_hd__and3_1 _1880_ (.A(\MCU.CPU_SEQ.inst_type_in[1] ),
    .B(net1),
    .C(_0530_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0433_));
 sky130_fd_sc_hd__a31o_1 _1881_ (.A1(_0527_),
    .A2(net38),
    .A3(_0403_),
    .B1(_0433_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0188_));
 sky130_fd_sc_hd__inv_2 _1882_ (.A(net107),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0434_));
 sky130_fd_sc_hd__nor4_1 _1883_ (.A(_0434_),
    .B(_0597_),
    .C(_0638_),
    .D(_0663_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0435_));
 sky130_fd_sc_hd__nand3b_1 _1884_ (.A_N(_0709_),
    .B(_0738_),
    .C(_0435_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0436_));
 sky130_fd_sc_hd__nand2_1 _1885_ (.A(_0434_),
    .B(net131),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0437_));
 sky130_fd_sc_hd__o41a_1 _1886_ (.A1(_0686_),
    .A2(_0764_),
    .A3(_0787_),
    .A4(_0436_),
    .B1(_0437_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0438_));
 sky130_fd_sc_hd__nor2_1 _1887_ (.A(_0532_),
    .B(_0438_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0189_));
 sky130_fd_sc_hd__or2_1 _1888_ (.A(\MCU.ALU.status_in[2] ),
    .B(net107),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0439_));
 sky130_fd_sc_hd__o211a_1 _1889_ (.A1(_0434_),
    .A2(_0787_),
    .B1(_0439_),
    .C1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0190_));
 sky130_fd_sc_hd__nand2_2 _1890_ (.A(_0538_),
    .B(\MCU.CPU_SEQ.inst_type_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0440_));
 sky130_fd_sc_hd__or2_1 _1891_ (.A(_0622_),
    .B(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0441_));
 sky130_fd_sc_hd__and2_1 _1892_ (.A(\MCU.PC.pc_update_en_in ),
    .B(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0442_));
 sky130_fd_sc_hd__clkbuf_2 _1893_ (.A(_0442_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0443_));
 sky130_fd_sc_hd__buf_2 _1894_ (.A(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0444_));
 sky130_fd_sc_hd__nand2_1 _1895_ (.A(\MCU.PC.program_counter[0] ),
    .B(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0445_));
 sky130_fd_sc_hd__a32o_1 _1896_ (.A1(_0441_),
    .A2(_0443_),
    .A3(_0445_),
    .B1(_0526_),
    .B2(net139),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0191_));
 sky130_fd_sc_hd__buf_2 _1897_ (.A(_0443_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0446_));
 sky130_fd_sc_hd__xor2_1 _1898_ (.A(\MCU.PC.program_counter[1] ),
    .B(\MCU.PC.program_counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0447_));
 sky130_fd_sc_hd__buf_2 _1899_ (.A(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0448_));
 sky130_fd_sc_hd__mux2_1 _1900_ (.A0(_0651_),
    .A1(_0447_),
    .S(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0449_));
 sky130_fd_sc_hd__a22o_1 _1901_ (.A1(net123),
    .A2(_0526_),
    .B1(_0446_),
    .B2(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0192_));
 sky130_fd_sc_hd__or2_1 _1902_ (.A(_0675_),
    .B(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0450_));
 sky130_fd_sc_hd__a21oi_1 _1903_ (.A1(\MCU.PC.program_counter[1] ),
    .A2(\MCU.PC.program_counter[0] ),
    .B1(\MCU.PC.program_counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0451_));
 sky130_fd_sc_hd__and3_1 _1904_ (.A(\MCU.PC.program_counter[2] ),
    .B(\MCU.PC.program_counter[1] ),
    .C(\MCU.PC.program_counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0452_));
 sky130_fd_sc_hd__o21ai_1 _1905_ (.A1(_0451_),
    .A2(_0452_),
    .B1(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0453_));
 sky130_fd_sc_hd__a32o_1 _1906_ (.A1(_0446_),
    .A2(_0450_),
    .A3(_0453_),
    .B1(_0526_),
    .B2(net28),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0193_));
 sky130_fd_sc_hd__or2_1 _1907_ (.A(_0698_),
    .B(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0454_));
 sky130_fd_sc_hd__and2_1 _1908_ (.A(\MCU.PC.program_counter[3] ),
    .B(_0452_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0455_));
 sky130_fd_sc_hd__nor2_1 _1909_ (.A(\MCU.PC.program_counter[3] ),
    .B(_0452_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0456_));
 sky130_fd_sc_hd__o21ai_1 _1910_ (.A1(_0455_),
    .A2(_0456_),
    .B1(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0457_));
 sky130_fd_sc_hd__a32o_1 _1911_ (.A1(_0446_),
    .A2(_0454_),
    .A3(_0457_),
    .B1(_0526_),
    .B2(net25),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0194_));
 sky130_fd_sc_hd__xor2_1 _1912_ (.A(\MCU.PC.program_counter[4] ),
    .B(_0455_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0458_));
 sky130_fd_sc_hd__mux2_1 _1913_ (.A0(_0733_),
    .A1(_0458_),
    .S(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0459_));
 sky130_fd_sc_hd__a22o_1 _1914_ (.A1(net136),
    .A2(_0526_),
    .B1(_0446_),
    .B2(_0459_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0195_));
 sky130_fd_sc_hd__or2_1 _1915_ (.A(_0751_),
    .B(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0460_));
 sky130_fd_sc_hd__and3_1 _1916_ (.A(\MCU.PC.program_counter[5] ),
    .B(\MCU.PC.program_counter[4] ),
    .C(_0455_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0461_));
 sky130_fd_sc_hd__a21oi_1 _1917_ (.A1(\MCU.PC.program_counter[4] ),
    .A2(_0455_),
    .B1(\MCU.PC.program_counter[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0462_));
 sky130_fd_sc_hd__o21ai_1 _1918_ (.A1(_0461_),
    .A2(_0462_),
    .B1(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0463_));
 sky130_fd_sc_hd__a32o_1 _1919_ (.A1(_0446_),
    .A2(_0460_),
    .A3(_0463_),
    .B1(_0526_),
    .B2(net29),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0196_));
 sky130_fd_sc_hd__or2_1 _1920_ (.A(_0777_),
    .B(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0464_));
 sky130_fd_sc_hd__and2_1 _1921_ (.A(\MCU.PC.program_counter[6] ),
    .B(_0461_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0465_));
 sky130_fd_sc_hd__nor2_1 _1922_ (.A(\MCU.PC.program_counter[6] ),
    .B(_0461_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0466_));
 sky130_fd_sc_hd__o21ai_1 _1923_ (.A1(_0465_),
    .A2(_0466_),
    .B1(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0467_));
 sky130_fd_sc_hd__a32o_1 _1924_ (.A1(_0446_),
    .A2(_0464_),
    .A3(_0467_),
    .B1(_0526_),
    .B2(net34),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0197_));
 sky130_fd_sc_hd__xor2_1 _1925_ (.A(\MCU.PC.program_counter[7] ),
    .B(_0465_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0468_));
 sky130_fd_sc_hd__mux2_1 _1926_ (.A0(\MCU.ALU.a_in[0] ),
    .A1(_0468_),
    .S(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0469_));
 sky130_fd_sc_hd__a22o_1 _1927_ (.A1(net133),
    .A2(_0526_),
    .B1(_0446_),
    .B2(_0469_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0198_));
 sky130_fd_sc_hd__a21oi_1 _1928_ (.A1(\MCU.PC.program_counter[7] ),
    .A2(_0465_),
    .B1(\MCU.PC.program_counter[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0470_));
 sky130_fd_sc_hd__and3_1 _1929_ (.A(\MCU.PC.program_counter[8] ),
    .B(\MCU.PC.program_counter[7] ),
    .C(_0465_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0471_));
 sky130_fd_sc_hd__o21ai_1 _1930_ (.A1(_0470_),
    .A2(_0471_),
    .B1(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0472_));
 sky130_fd_sc_hd__or2_1 _1931_ (.A(_0554_),
    .B(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0473_));
 sky130_fd_sc_hd__a32o_1 _1932_ (.A1(_0446_),
    .A2(_0472_),
    .A3(_0473_),
    .B1(_0525_),
    .B2(net46),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0199_));
 sky130_fd_sc_hd__and2_1 _1933_ (.A(\MCU.PC.program_counter[9] ),
    .B(_0471_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0474_));
 sky130_fd_sc_hd__nor2_1 _1934_ (.A(\MCU.PC.program_counter[9] ),
    .B(_0471_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0475_));
 sky130_fd_sc_hd__o21ai_1 _1935_ (.A1(_0474_),
    .A2(_0475_),
    .B1(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0476_));
 sky130_fd_sc_hd__or2_1 _1936_ (.A(_0632_),
    .B(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0477_));
 sky130_fd_sc_hd__a32o_1 _1937_ (.A1(_0446_),
    .A2(_0476_),
    .A3(_0477_),
    .B1(_0525_),
    .B2(net26),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0200_));
 sky130_fd_sc_hd__xor2_1 _1938_ (.A(\MCU.PC.program_counter[10] ),
    .B(_0474_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0478_));
 sky130_fd_sc_hd__mux2_1 _1939_ (.A0(\MCU.ALU.a_in[3] ),
    .A1(_0478_),
    .S(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0479_));
 sky130_fd_sc_hd__a22o_1 _1940_ (.A1(\MCU.PC.program_counter[10] ),
    .A2(_0526_),
    .B1(_0446_),
    .B2(_0479_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0201_));
 sky130_fd_sc_hd__and3_1 _1941_ (.A(\MCU.PC.program_counter[11] ),
    .B(\MCU.PC.program_counter[10] ),
    .C(_0474_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0480_));
 sky130_fd_sc_hd__a21oi_1 _1942_ (.A1(\MCU.PC.program_counter[10] ),
    .A2(_0474_),
    .B1(\MCU.PC.program_counter[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0481_));
 sky130_fd_sc_hd__o21ai_1 _1943_ (.A1(_0480_),
    .A2(_0481_),
    .B1(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0482_));
 sky130_fd_sc_hd__or2_1 _1944_ (.A(\MCU.ALU.a_in[4] ),
    .B(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0483_));
 sky130_fd_sc_hd__a32o_1 _1945_ (.A1(_0443_),
    .A2(_0482_),
    .A3(_0483_),
    .B1(_0525_),
    .B2(net40),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0202_));
 sky130_fd_sc_hd__and2_1 _1946_ (.A(\MCU.PC.program_counter[12] ),
    .B(_0480_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0484_));
 sky130_fd_sc_hd__nor2_1 _1947_ (.A(\MCU.PC.program_counter[12] ),
    .B(_0480_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0485_));
 sky130_fd_sc_hd__o21ai_1 _1948_ (.A1(_0484_),
    .A2(_0485_),
    .B1(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0486_));
 sky130_fd_sc_hd__or2_1 _1949_ (.A(\MCU.ALU.a_in[5] ),
    .B(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0487_));
 sky130_fd_sc_hd__a32o_1 _1950_ (.A1(_0443_),
    .A2(_0486_),
    .A3(_0487_),
    .B1(_0525_),
    .B2(net41),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0203_));
 sky130_fd_sc_hd__nand2_1 _1951_ (.A(\MCU.PC.program_counter[13] ),
    .B(_0484_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0488_));
 sky130_fd_sc_hd__or2_1 _1952_ (.A(\MCU.PC.program_counter[13] ),
    .B(_0484_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0489_));
 sky130_fd_sc_hd__a21bo_1 _1953_ (.A1(_0488_),
    .A2(_0489_),
    .B1_N(_0444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0490_));
 sky130_fd_sc_hd__or2_1 _1954_ (.A(\MCU.ALU.a_in[6] ),
    .B(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0491_));
 sky130_fd_sc_hd__a32o_1 _1955_ (.A1(_0443_),
    .A2(_0490_),
    .A3(_0491_),
    .B1(_0525_),
    .B2(net35),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0204_));
 sky130_fd_sc_hd__o21ai_1 _1956_ (.A1(\MCU.PC.program_counter[14] ),
    .A2(_0488_),
    .B1(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0492_));
 sky130_fd_sc_hd__a21o_1 _1957_ (.A1(\MCU.PC.program_counter[14] ),
    .A2(_0488_),
    .B1(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0493_));
 sky130_fd_sc_hd__or2_1 _1958_ (.A(\MCU.ALU.a_in[7] ),
    .B(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0494_));
 sky130_fd_sc_hd__a32o_1 _1959_ (.A1(_0443_),
    .A2(_0493_),
    .A3(_0494_),
    .B1(_0525_),
    .B2(net31),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0205_));
 sky130_fd_sc_hd__dfxtp_1 _1960_ (.CLK(clknet_leaf_7_clk),
    .D(_0009_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.mem_type[1] ));
 sky130_fd_sc_hd__dfxtp_1 _1961_ (.CLK(clknet_leaf_7_clk),
    .D(_0010_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.mem_type[2] ));
 sky130_fd_sc_hd__dfxtp_2 _1962_ (.CLK(clknet_leaf_7_clk),
    .D(_0011_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.mem_type[3] ));
 sky130_fd_sc_hd__dfxtp_1 _1963_ (.CLK(clknet_leaf_9_clk),
    .D(_0012_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[1][0] ));
 sky130_fd_sc_hd__dfxtp_1 _1964_ (.CLK(clknet_leaf_9_clk),
    .D(_0013_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[1][1] ));
 sky130_fd_sc_hd__dfxtp_1 _1965_ (.CLK(clknet_leaf_10_clk),
    .D(_0014_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[1][2] ));
 sky130_fd_sc_hd__dfxtp_1 _1966_ (.CLK(clknet_leaf_10_clk),
    .D(_0015_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[1][3] ));
 sky130_fd_sc_hd__dfxtp_1 _1967_ (.CLK(clknet_leaf_10_clk),
    .D(_0016_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[1][4] ));
 sky130_fd_sc_hd__dfxtp_1 _1968_ (.CLK(clknet_leaf_11_clk),
    .D(_0017_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[1][5] ));
 sky130_fd_sc_hd__dfxtp_1 _1969_ (.CLK(clknet_leaf_12_clk),
    .D(_0018_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[1][6] ));
 sky130_fd_sc_hd__dfxtp_1 _1970_ (.CLK(clknet_leaf_12_clk),
    .D(_0019_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[1][7] ));
 sky130_fd_sc_hd__dfxtp_1 _1971_ (.CLK(clknet_leaf_9_clk),
    .D(_0020_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[2][0] ));
 sky130_fd_sc_hd__dfxtp_1 _1972_ (.CLK(clknet_leaf_9_clk),
    .D(_0021_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[2][1] ));
 sky130_fd_sc_hd__dfxtp_1 _1973_ (.CLK(clknet_leaf_10_clk),
    .D(_0022_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[2][2] ));
 sky130_fd_sc_hd__dfxtp_1 _1974_ (.CLK(clknet_leaf_9_clk),
    .D(_0023_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[2][3] ));
 sky130_fd_sc_hd__dfxtp_1 _1975_ (.CLK(clknet_leaf_11_clk),
    .D(_0024_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[2][4] ));
 sky130_fd_sc_hd__dfxtp_1 _1976_ (.CLK(clknet_leaf_11_clk),
    .D(_0025_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[2][5] ));
 sky130_fd_sc_hd__dfxtp_1 _1977_ (.CLK(clknet_leaf_12_clk),
    .D(_0026_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[2][6] ));
 sky130_fd_sc_hd__dfxtp_1 _1978_ (.CLK(clknet_leaf_12_clk),
    .D(_0027_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[2][7] ));
 sky130_fd_sc_hd__dfxtp_1 _1979_ (.CLK(clknet_leaf_9_clk),
    .D(_0028_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[3][0] ));
 sky130_fd_sc_hd__dfxtp_1 _1980_ (.CLK(clknet_leaf_9_clk),
    .D(_0029_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[3][1] ));
 sky130_fd_sc_hd__dfxtp_1 _1981_ (.CLK(clknet_leaf_10_clk),
    .D(_0030_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[3][2] ));
 sky130_fd_sc_hd__dfxtp_1 _1982_ (.CLK(clknet_leaf_9_clk),
    .D(_0031_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[3][3] ));
 sky130_fd_sc_hd__dfxtp_1 _1983_ (.CLK(clknet_leaf_10_clk),
    .D(_0032_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[3][4] ));
 sky130_fd_sc_hd__dfxtp_1 _1984_ (.CLK(clknet_leaf_10_clk),
    .D(_0033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[3][5] ));
 sky130_fd_sc_hd__dfxtp_1 _1985_ (.CLK(clknet_leaf_12_clk),
    .D(_0034_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[3][6] ));
 sky130_fd_sc_hd__dfxtp_1 _1986_ (.CLK(clknet_leaf_12_clk),
    .D(_0035_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[3][7] ));
 sky130_fd_sc_hd__dfxtp_1 _1987_ (.CLK(clknet_leaf_9_clk),
    .D(_0036_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[0][0] ));
 sky130_fd_sc_hd__dfxtp_1 _1988_ (.CLK(clknet_leaf_9_clk),
    .D(_0037_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[0][1] ));
 sky130_fd_sc_hd__dfxtp_1 _1989_ (.CLK(clknet_leaf_10_clk),
    .D(_0038_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[0][2] ));
 sky130_fd_sc_hd__dfxtp_1 _1990_ (.CLK(clknet_leaf_9_clk),
    .D(_0039_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[0][3] ));
 sky130_fd_sc_hd__dfxtp_1 _1991_ (.CLK(clknet_leaf_12_clk),
    .D(_0040_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[0][4] ));
 sky130_fd_sc_hd__dfxtp_1 _1992_ (.CLK(clknet_leaf_11_clk),
    .D(_0041_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[0][5] ));
 sky130_fd_sc_hd__dfxtp_1 _1993_ (.CLK(clknet_leaf_12_clk),
    .D(_0042_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[0][6] ));
 sky130_fd_sc_hd__dfxtp_1 _1994_ (.CLK(clknet_leaf_12_clk),
    .D(_0043_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[0][7] ));
 sky130_fd_sc_hd__dfxtp_1 _1995_ (.CLK(clknet_leaf_1_clk),
    .D(_0044_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.carry_in ));
 sky130_fd_sc_hd__dfxtp_1 _1996_ (.CLK(clknet_leaf_7_clk),
    .D(_0003_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.state[0] ));
 sky130_fd_sc_hd__dfxtp_1 _1997_ (.CLK(clknet_leaf_8_clk),
    .D(_0004_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.pc_update_en_in ));
 sky130_fd_sc_hd__dfxtp_1 _1998_ (.CLK(clknet_leaf_7_clk),
    .D(_0000_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.state[2] ));
 sky130_fd_sc_hd__dfxtp_4 _1999_ (.CLK(clknet_leaf_9_clk),
    .D(_0005_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.state[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2000_ (.CLK(clknet_leaf_7_clk),
    .D(_0001_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.state[4] ));
 sky130_fd_sc_hd__dfxtp_1 _2001_ (.CLK(clknet_leaf_7_clk),
    .D(_0006_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.state[5] ));
 sky130_fd_sc_hd__dfxtp_1 _2002_ (.CLK(clknet_leaf_7_clk),
    .D(net119),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.state[6] ));
 sky130_fd_sc_hd__dfxtp_1 _2003_ (.CLK(clknet_leaf_8_clk),
    .D(_0002_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SR.status_write_en_in ));
 sky130_fd_sc_hd__dfxtp_1 _2004_ (.CLK(clknet_leaf_7_clk),
    .D(net21),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.state[8] ));
 sky130_fd_sc_hd__dfxtp_1 _2005_ (.CLK(clknet_leaf_7_clk),
    .D(_0045_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[8] ));
 sky130_fd_sc_hd__dfxtp_1 _2006_ (.CLK(clknet_leaf_7_clk),
    .D(_0046_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[9] ));
 sky130_fd_sc_hd__dfxtp_1 _2007_ (.CLK(clknet_leaf_8_clk),
    .D(_0047_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[10] ));
 sky130_fd_sc_hd__dfxtp_1 _2008_ (.CLK(clknet_leaf_7_clk),
    .D(_0048_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[11] ));
 sky130_fd_sc_hd__dfxtp_1 _2009_ (.CLK(clknet_leaf_8_clk),
    .D(_0049_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[12] ));
 sky130_fd_sc_hd__dfxtp_1 _2010_ (.CLK(clknet_leaf_8_clk),
    .D(_0050_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[13] ));
 sky130_fd_sc_hd__dfxtp_1 _2011_ (.CLK(clknet_leaf_8_clk),
    .D(_0051_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[14] ));
 sky130_fd_sc_hd__dfxtp_1 _2012_ (.CLK(clknet_leaf_5_clk),
    .D(_0052_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[15] ));
 sky130_fd_sc_hd__dfxtp_1 _2013_ (.CLK(clknet_leaf_5_clk),
    .D(_0053_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.sclk_out ));
 sky130_fd_sc_hd__dfxtp_1 _2014_ (.CLK(clknet_leaf_4_clk),
    .D(_0054_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.cs_out ));
 sky130_fd_sc_hd__dfxtp_4 _2015_ (.CLK(clknet_leaf_3_clk),
    .D(_0055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_out[0]));
 sky130_fd_sc_hd__dfxtp_4 _2016_ (.CLK(clknet_leaf_3_clk),
    .D(_0056_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_out[1]));
 sky130_fd_sc_hd__dfxtp_4 _2017_ (.CLK(clknet_leaf_3_clk),
    .D(_0057_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_out[2]));
 sky130_fd_sc_hd__dfxtp_4 _2018_ (.CLK(clknet_leaf_3_clk),
    .D(_0058_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_out[3]));
 sky130_fd_sc_hd__dfxtp_4 _2019_ (.CLK(clknet_leaf_3_clk),
    .D(_0059_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_out[4]));
 sky130_fd_sc_hd__dfxtp_4 _2020_ (.CLK(clknet_leaf_2_clk),
    .D(_0060_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_out[5]));
 sky130_fd_sc_hd__dfxtp_4 _2021_ (.CLK(clknet_leaf_3_clk),
    .D(_0061_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_out[6]));
 sky130_fd_sc_hd__dfxtp_4 _2022_ (.CLK(clknet_leaf_3_clk),
    .D(_0062_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_out[7]));
 sky130_fd_sc_hd__dfxtp_4 _2023_ (.CLK(clknet_leaf_3_clk),
    .D(_0063_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_oe[0]));
 sky130_fd_sc_hd__dfxtp_4 _2024_ (.CLK(clknet_leaf_3_clk),
    .D(_0064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_oe[1]));
 sky130_fd_sc_hd__dfxtp_4 _2025_ (.CLK(clknet_leaf_2_clk),
    .D(_0065_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_oe[2]));
 sky130_fd_sc_hd__dfxtp_4 _2026_ (.CLK(clknet_leaf_2_clk),
    .D(_0066_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uio_oe[3]));
 sky130_fd_sc_hd__dfxtp_1 _2027_ (.CLK(clknet_leaf_3_clk),
    .D(_0067_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_out[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2028_ (.CLK(clknet_leaf_3_clk),
    .D(_0068_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_out[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2029_ (.CLK(clknet_leaf_5_clk),
    .D(_0069_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_out[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2030_ (.CLK(clknet_leaf_5_clk),
    .D(_0070_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_out[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2031_ (.CLK(clknet_leaf_4_clk),
    .D(_0071_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_out[4] ));
 sky130_fd_sc_hd__dfxtp_1 _2032_ (.CLK(clknet_leaf_4_clk),
    .D(_0072_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_out[5] ));
 sky130_fd_sc_hd__dfxtp_1 _2033_ (.CLK(clknet_leaf_4_clk),
    .D(_0073_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_out[6] ));
 sky130_fd_sc_hd__dfxtp_1 _2034_ (.CLK(clknet_leaf_4_clk),
    .D(_0074_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_out[7] ));
 sky130_fd_sc_hd__dfxtp_1 _2035_ (.CLK(clknet_leaf_6_clk),
    .D(net3),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.gpio_in_sync[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2036_ (.CLK(clknet_leaf_6_clk),
    .D(net4),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.gpio_in_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2037_ (.CLK(clknet_leaf_5_clk),
    .D(net5),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.gpio_in_sync[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2038_ (.CLK(clknet_leaf_5_clk),
    .D(net6),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.gpio_in_sync[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2039_ (.CLK(clknet_leaf_6_clk),
    .D(net18),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.gpio_in_reg[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2040_ (.CLK(clknet_leaf_6_clk),
    .D(net17),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.gpio_in_reg[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2041_ (.CLK(clknet_leaf_6_clk),
    .D(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.gpio_in_reg[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2042_ (.CLK(clknet_leaf_5_clk),
    .D(net16),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.gpio_in_reg[3] ));
 sky130_fd_sc_hd__dfxtp_4 _2043_ (.CLK(clknet_leaf_4_clk),
    .D(_0075_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.periph_data_valid_out ));
 sky130_fd_sc_hd__dfxtp_1 _2044_ (.CLK(clknet_leaf_3_clk),
    .D(_0076_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.clock_counter[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2045_ (.CLK(clknet_leaf_3_clk),
    .D(_0077_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.clock_counter[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2046_ (.CLK(clknet_leaf_3_clk),
    .D(_0078_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.clock_counter[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2047_ (.CLK(clknet_leaf_5_clk),
    .D(net33),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.clock_div[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2048_ (.CLK(clknet_leaf_6_clk),
    .D(_0080_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.clock_div[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2049_ (.CLK(clknet_leaf_6_clk),
    .D(_0081_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.clock_div[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2050_ (.CLK(clknet_leaf_6_clk),
    .D(_0082_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.clock_div[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2051_ (.CLK(clknet_leaf_3_clk),
    .D(_0083_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.shift_reg[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2052_ (.CLK(clknet_leaf_2_clk),
    .D(_0084_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.shift_reg[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2053_ (.CLK(clknet_leaf_2_clk),
    .D(_0085_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.shift_reg[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2054_ (.CLK(clknet_leaf_2_clk),
    .D(_0086_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.shift_reg[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2055_ (.CLK(clknet_leaf_2_clk),
    .D(_0087_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.shift_reg[4] ));
 sky130_fd_sc_hd__dfxtp_1 _2056_ (.CLK(clknet_leaf_2_clk),
    .D(_0088_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.shift_reg[5] ));
 sky130_fd_sc_hd__dfxtp_1 _2057_ (.CLK(clknet_leaf_2_clk),
    .D(_0089_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.shift_reg[6] ));
 sky130_fd_sc_hd__dfxtp_1 _2058_ (.CLK(clknet_leaf_3_clk),
    .D(_0090_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.mosi_out ));
 sky130_fd_sc_hd__dfxtp_1 _2059_ (.CLK(clknet_leaf_6_clk),
    .D(_0091_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2060_ (.CLK(clknet_leaf_5_clk),
    .D(_0092_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2061_ (.CLK(clknet_leaf_6_clk),
    .D(_0093_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2062_ (.CLK(clknet_leaf_5_clk),
    .D(_0094_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2063_ (.CLK(clknet_leaf_1_clk),
    .D(_0095_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2064_ (.CLK(clknet_leaf_4_clk),
    .D(_0096_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[4] ));
 sky130_fd_sc_hd__dfxtp_1 _2065_ (.CLK(clknet_leaf_4_clk),
    .D(_0097_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[5] ));
 sky130_fd_sc_hd__dfxtp_1 _2066_ (.CLK(clknet_leaf_1_clk),
    .D(_0098_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[6] ));
 sky130_fd_sc_hd__dfxtp_1 _2067_ (.CLK(clknet_leaf_1_clk),
    .D(_0099_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[7] ));
 sky130_fd_sc_hd__dfxtp_1 _2068_ (.CLK(clknet_leaf_1_clk),
    .D(_0100_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[8] ));
 sky130_fd_sc_hd__dfxtp_1 _2069_ (.CLK(clknet_leaf_1_clk),
    .D(_0101_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[9] ));
 sky130_fd_sc_hd__dfxtp_1 _2070_ (.CLK(clknet_leaf_1_clk),
    .D(_0102_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[10] ));
 sky130_fd_sc_hd__dfxtp_1 _2071_ (.CLK(clknet_leaf_1_clk),
    .D(_0103_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[11] ));
 sky130_fd_sc_hd__dfxtp_1 _2072_ (.CLK(clknet_leaf_1_clk),
    .D(_0104_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[12] ));
 sky130_fd_sc_hd__dfxtp_1 _2073_ (.CLK(clknet_leaf_4_clk),
    .D(_0105_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[13] ));
 sky130_fd_sc_hd__dfxtp_1 _2074_ (.CLK(clknet_leaf_1_clk),
    .D(_0106_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[14] ));
 sky130_fd_sc_hd__dfxtp_1 _2075_ (.CLK(clknet_leaf_4_clk),
    .D(_0107_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.addr_reg[15] ));
 sky130_fd_sc_hd__dfxtp_1 _2076_ (.CLK(clknet_leaf_6_clk),
    .D(_0108_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.state[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2077_ (.CLK(clknet_leaf_6_clk),
    .D(_0109_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.state[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2078_ (.CLK(clknet_leaf_6_clk),
    .D(_0110_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2079_ (.CLK(clknet_leaf_6_clk),
    .D(_0111_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.state[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2080_ (.CLK(clknet_leaf_5_clk),
    .D(_0112_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2081_ (.CLK(clknet_leaf_7_clk),
    .D(_0113_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2082_ (.CLK(clknet_leaf_7_clk),
    .D(_0114_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2083_ (.CLK(clknet_leaf_4_clk),
    .D(_0115_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[4] ));
 sky130_fd_sc_hd__dfxtp_1 _2084_ (.CLK(clknet_leaf_4_clk),
    .D(_0116_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[5] ));
 sky130_fd_sc_hd__dfxtp_1 _2085_ (.CLK(clknet_leaf_4_clk),
    .D(_0117_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[6] ));
 sky130_fd_sc_hd__dfxtp_1 _2086_ (.CLK(clknet_leaf_5_clk),
    .D(_0118_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.ir_data_in[7] ));
 sky130_fd_sc_hd__dfxtp_1 _2087_ (.CLK(clknet_leaf_5_clk),
    .D(_0119_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.mosi_out ));
 sky130_fd_sc_hd__dfxtp_1 _2088_ (.CLK(clknet_leaf_9_clk),
    .D(_0120_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[6][0] ));
 sky130_fd_sc_hd__dfxtp_1 _2089_ (.CLK(clknet_leaf_11_clk),
    .D(_0121_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[6][1] ));
 sky130_fd_sc_hd__dfxtp_1 _2090_ (.CLK(clknet_leaf_10_clk),
    .D(_0122_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[6][2] ));
 sky130_fd_sc_hd__dfxtp_1 _2091_ (.CLK(clknet_leaf_10_clk),
    .D(_0123_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[6][3] ));
 sky130_fd_sc_hd__dfxtp_1 _2092_ (.CLK(clknet_leaf_12_clk),
    .D(_0124_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[6][4] ));
 sky130_fd_sc_hd__dfxtp_1 _2093_ (.CLK(clknet_leaf_11_clk),
    .D(_0125_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[6][5] ));
 sky130_fd_sc_hd__dfxtp_1 _2094_ (.CLK(clknet_leaf_12_clk),
    .D(_0126_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[6][6] ));
 sky130_fd_sc_hd__dfxtp_1 _2095_ (.CLK(clknet_leaf_0_clk),
    .D(_0127_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[6][7] ));
 sky130_fd_sc_hd__dfxtp_1 _2096_ (.CLK(clknet_leaf_10_clk),
    .D(_0128_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[4][0] ));
 sky130_fd_sc_hd__dfxtp_1 _2097_ (.CLK(clknet_leaf_11_clk),
    .D(_0129_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[4][1] ));
 sky130_fd_sc_hd__dfxtp_1 _2098_ (.CLK(clknet_leaf_10_clk),
    .D(_0130_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[4][2] ));
 sky130_fd_sc_hd__dfxtp_1 _2099_ (.CLK(clknet_leaf_10_clk),
    .D(_0131_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[4][3] ));
 sky130_fd_sc_hd__dfxtp_1 _2100_ (.CLK(clknet_leaf_12_clk),
    .D(_0132_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[4][4] ));
 sky130_fd_sc_hd__dfxtp_1 _2101_ (.CLK(clknet_leaf_11_clk),
    .D(_0133_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[4][5] ));
 sky130_fd_sc_hd__dfxtp_1 _2102_ (.CLK(clknet_leaf_12_clk),
    .D(_0134_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[4][6] ));
 sky130_fd_sc_hd__dfxtp_1 _2103_ (.CLK(clknet_leaf_12_clk),
    .D(_0135_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[4][7] ));
 sky130_fd_sc_hd__dfxtp_1 _2104_ (.CLK(clknet_leaf_3_clk),
    .D(_0136_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.busy_flag ));
 sky130_fd_sc_hd__dfxtp_1 _2105_ (.CLK(clknet_leaf_6_clk),
    .D(_0137_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.flash_cs_out ));
 sky130_fd_sc_hd__dfxtp_1 _2106_ (.CLK(clknet_leaf_6_clk),
    .D(_0138_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.psram_cs_out ));
 sky130_fd_sc_hd__dfxtp_2 _2107_ (.CLK(clknet_leaf_6_clk),
    .D(_0139_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.sclk_out ));
 sky130_fd_sc_hd__dfxtp_1 _2108_ (.CLK(clknet_leaf_6_clk),
    .D(net37),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.clock_counter[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2109_ (.CLK(clknet_leaf_6_clk),
    .D(_0141_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.clock_counter[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2110_ (.CLK(clknet_leaf_6_clk),
    .D(_0142_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.clock_counter[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2111_ (.CLK(clknet_leaf_6_clk),
    .D(_0143_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.SPI_CTRL.clock_counter[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2112_ (.CLK(clknet_leaf_11_clk),
    .D(_0144_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[5][0] ));
 sky130_fd_sc_hd__dfxtp_1 _2113_ (.CLK(clknet_leaf_11_clk),
    .D(_0145_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[5][1] ));
 sky130_fd_sc_hd__dfxtp_1 _2114_ (.CLK(clknet_leaf_10_clk),
    .D(_0146_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[5][2] ));
 sky130_fd_sc_hd__dfxtp_1 _2115_ (.CLK(clknet_leaf_10_clk),
    .D(_0147_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[5][3] ));
 sky130_fd_sc_hd__dfxtp_1 _2116_ (.CLK(clknet_leaf_12_clk),
    .D(_0148_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[5][4] ));
 sky130_fd_sc_hd__dfxtp_1 _2117_ (.CLK(clknet_leaf_11_clk),
    .D(_0149_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[5][5] ));
 sky130_fd_sc_hd__dfxtp_1 _2118_ (.CLK(clknet_leaf_12_clk),
    .D(_0150_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[5][6] ));
 sky130_fd_sc_hd__dfxtp_1 _2119_ (.CLK(clknet_leaf_0_clk),
    .D(_0151_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[5][7] ));
 sky130_fd_sc_hd__dfxtp_1 _2120_ (.CLK(clknet_leaf_8_clk),
    .D(net24),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.IR.cond_in ));
 sky130_fd_sc_hd__dfxtp_1 _2121_ (.CLK(clknet_leaf_11_clk),
    .D(_0153_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.ovf_in ));
 sky130_fd_sc_hd__dfxtp_1 _2122_ (.CLK(clknet_leaf_10_clk),
    .D(_0154_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[7][0] ));
 sky130_fd_sc_hd__dfxtp_1 _2123_ (.CLK(clknet_leaf_11_clk),
    .D(_0155_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[7][1] ));
 sky130_fd_sc_hd__dfxtp_1 _2124_ (.CLK(clknet_leaf_10_clk),
    .D(_0156_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[7][2] ));
 sky130_fd_sc_hd__dfxtp_1 _2125_ (.CLK(clknet_leaf_10_clk),
    .D(_0157_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[7][3] ));
 sky130_fd_sc_hd__dfxtp_1 _2126_ (.CLK(clknet_leaf_12_clk),
    .D(_0158_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[7][4] ));
 sky130_fd_sc_hd__dfxtp_1 _2127_ (.CLK(clknet_leaf_11_clk),
    .D(_0159_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[7][5] ));
 sky130_fd_sc_hd__dfxtp_1 _2128_ (.CLK(clknet_leaf_12_clk),
    .D(_0160_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[7][6] ));
 sky130_fd_sc_hd__dfxtp_1 _2129_ (.CLK(clknet_leaf_0_clk),
    .D(_0161_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.RF.reg_file[7][7] ));
 sky130_fd_sc_hd__dfxtp_1 _2130_ (.CLK(clknet_leaf_5_clk),
    .D(_0162_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.div_val_reg[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2131_ (.CLK(clknet_leaf_5_clk),
    .D(_0163_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.div_val_reg[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2132_ (.CLK(clknet_leaf_6_clk),
    .D(_0164_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.div_val_reg[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2133_ (.CLK(clknet_leaf_6_clk),
    .D(_0165_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PERI.div_val_reg[3] ));
 sky130_fd_sc_hd__dfxtp_4 _2134_ (.CLK(clknet_leaf_0_clk),
    .D(_0166_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.a_in[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2135_ (.CLK(clknet_leaf_0_clk),
    .D(_0167_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.a_in[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2136_ (.CLK(clknet_leaf_0_clk),
    .D(_0168_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.a_in[2] ));
 sky130_fd_sc_hd__dfxtp_4 _2137_ (.CLK(clknet_leaf_0_clk),
    .D(_0169_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.a_in[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2138_ (.CLK(clknet_leaf_0_clk),
    .D(_0170_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.a_in[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2139_ (.CLK(clknet_leaf_1_clk),
    .D(_0171_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.a_in[5] ));
 sky130_fd_sc_hd__dfxtp_2 _2140_ (.CLK(clknet_leaf_1_clk),
    .D(_0172_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.a_in[6] ));
 sky130_fd_sc_hd__dfxtp_2 _2141_ (.CLK(clknet_leaf_1_clk),
    .D(_0173_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.a_in[7] ));
 sky130_fd_sc_hd__dfxtp_1 _2142_ (.CLK(clknet_leaf_11_clk),
    .D(_0174_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.alu_op_in[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2143_ (.CLK(clknet_leaf_11_clk),
    .D(_0175_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.alu_op_in[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2144_ (.CLK(clknet_leaf_11_clk),
    .D(_0176_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.alu_op_in[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2145_ (.CLK(clknet_leaf_11_clk),
    .D(_0177_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.alu_op_in[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2146_ (.CLK(clknet_leaf_8_clk),
    .D(_0178_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ID.imm_out[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2147_ (.CLK(clknet_leaf_8_clk),
    .D(_0179_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ID.dst_addr_out[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2148_ (.CLK(clknet_leaf_11_clk),
    .D(_0180_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ID.dst_addr_out[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2149_ (.CLK(clknet_leaf_8_clk),
    .D(_0181_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ID.dst_addr_out[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2150_ (.CLK(clknet_leaf_8_clk),
    .D(_0182_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ID.inst_in[8] ));
 sky130_fd_sc_hd__dfxtp_2 _2151_ (.CLK(clknet_leaf_9_clk),
    .D(_0183_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ID.inst_in[9] ));
 sky130_fd_sc_hd__dfxtp_2 _2152_ (.CLK(clknet_leaf_8_clk),
    .D(_0184_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ID.inst_in[10] ));
 sky130_fd_sc_hd__dfxtp_2 _2153_ (.CLK(clknet_leaf_9_clk),
    .D(_0185_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.imm_type_in[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2154_ (.CLK(clknet_leaf_9_clk),
    .D(_0186_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.imm_type_in[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2155_ (.CLK(clknet_leaf_9_clk),
    .D(_0187_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.inst_type_in[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2156_ (.CLK(clknet_leaf_8_clk),
    .D(_0188_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.CPU_SEQ.inst_type_in[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2157_ (.CLK(clknet_leaf_11_clk),
    .D(_0189_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.status_in[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2158_ (.CLK(clknet_leaf_11_clk),
    .D(net108),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.ALU.status_in[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2159_ (.CLK(clknet_leaf_1_clk),
    .D(_0191_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[0] ));
 sky130_fd_sc_hd__dfxtp_1 _2160_ (.CLK(clknet_leaf_2_clk),
    .D(_0192_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[1] ));
 sky130_fd_sc_hd__dfxtp_1 _2161_ (.CLK(clknet_leaf_1_clk),
    .D(_0193_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[2] ));
 sky130_fd_sc_hd__dfxtp_1 _2162_ (.CLK(clknet_leaf_2_clk),
    .D(_0194_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[3] ));
 sky130_fd_sc_hd__dfxtp_1 _2163_ (.CLK(clknet_leaf_2_clk),
    .D(_0195_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[4] ));
 sky130_fd_sc_hd__dfxtp_1 _2164_ (.CLK(clknet_leaf_2_clk),
    .D(_0196_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[5] ));
 sky130_fd_sc_hd__dfxtp_1 _2165_ (.CLK(clknet_leaf_1_clk),
    .D(_0197_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[6] ));
 sky130_fd_sc_hd__dfxtp_1 _2166_ (.CLK(clknet_leaf_2_clk),
    .D(_0198_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[7] ));
 sky130_fd_sc_hd__dfxtp_1 _2167_ (.CLK(clknet_leaf_1_clk),
    .D(_0199_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[8] ));
 sky130_fd_sc_hd__dfxtp_1 _2168_ (.CLK(clknet_leaf_0_clk),
    .D(_0200_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[9] ));
 sky130_fd_sc_hd__dfxtp_1 _2169_ (.CLK(clknet_leaf_1_clk),
    .D(_0201_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[10] ));
 sky130_fd_sc_hd__dfxtp_1 _2170_ (.CLK(clknet_leaf_1_clk),
    .D(_0202_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[11] ));
 sky130_fd_sc_hd__dfxtp_1 _2171_ (.CLK(clknet_leaf_1_clk),
    .D(_0203_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[12] ));
 sky130_fd_sc_hd__dfxtp_1 _2172_ (.CLK(clknet_leaf_1_clk),
    .D(_0204_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[13] ));
 sky130_fd_sc_hd__dfxtp_1 _2173_ (.CLK(clknet_leaf_1_clk),
    .D(_0205_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\MCU.PC.program_counter[14] ));
 sky130_fd_sc_hd__clkbuf_4 _2178_ (.A(\MCU.SPI_CTRL.sclk_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[0]));
 sky130_fd_sc_hd__clkbuf_4 _2179_ (.A(\MCU.SPI_CTRL.flash_cs_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[1]));
 sky130_fd_sc_hd__clkbuf_4 _2180_ (.A(\MCU.SPI_CTRL.psram_cs_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[2]));
 sky130_fd_sc_hd__clkbuf_4 _2181_ (.A(\MCU.SPI_CTRL.mosi_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[3]));
 sky130_fd_sc_hd__clkbuf_4 _2182_ (.A(\MCU.PERI.sclk_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[4]));
 sky130_fd_sc_hd__clkbuf_4 _2183_ (.A(\MCU.PERI.mosi_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[5]));
 sky130_fd_sc_hd__clkbuf_4 _2184_ (.A(\MCU.PERI.cs_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[6]));
 sky130_fd_sc_hd__clkbuf_4 _2185_ (.A(\MCU.PC.pc_update_en_in ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[7]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_0_clk (.A(clknet_1_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_10_clk (.A(clknet_1_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_10_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_11_clk (.A(clknet_1_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_11_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_12_clk (.A(clknet_1_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_12_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_1_clk (.A(clknet_1_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_1_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_2_clk (.A(clknet_1_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_2_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_3_clk (.A(clknet_1_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_3_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_4_clk (.A(clknet_1_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_4_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_5_clk (.A(clknet_1_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_5_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_6_clk (.A(clknet_1_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_6_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_7_clk (.A(clknet_1_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_7_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_8_clk (.A(clknet_1_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_8_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_9_clk (.A(clknet_1_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_9_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\MCU.PERI.gpio_in_sync[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net15));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(_0152_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net24));
 sky130_fd_sc_hd__dlygate4sd3_1 hold100 (.A(\MCU.RF.reg_file[1][5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net114));
 sky130_fd_sc_hd__dlygate4sd3_1 hold101 (.A(\MCU.SPI_CTRL.addr_reg[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net115));
 sky130_fd_sc_hd__dlygate4sd3_1 hold102 (.A(\MCU.SPI_CTRL.addr_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net116));
 sky130_fd_sc_hd__dlygate4sd3_1 hold103 (.A(\MCU.RF.reg_file[0][3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net117));
 sky130_fd_sc_hd__dlygate4sd3_1 hold104 (.A(\MCU.CPU_SEQ.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net118));
 sky130_fd_sc_hd__dlygate4sd3_1 hold105 (.A(_0007_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net119));
 sky130_fd_sc_hd__dlygate4sd3_1 hold106 (.A(\MCU.RF.reg_file[5][5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net120));
 sky130_fd_sc_hd__dlygate4sd3_1 hold107 (.A(\MCU.SPI_CTRL.addr_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net121));
 sky130_fd_sc_hd__dlygate4sd3_1 hold108 (.A(\MCU.SPI_CTRL.addr_reg[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net122));
 sky130_fd_sc_hd__dlygate4sd3_1 hold109 (.A(\MCU.PC.program_counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net123));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\MCU.PC.program_counter[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net25));
 sky130_fd_sc_hd__dlygate4sd3_1 hold110 (.A(\MCU.SPI_CTRL.clock_counter[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net124));
 sky130_fd_sc_hd__dlygate4sd3_1 hold111 (.A(\MCU.SPI_CTRL.addr_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net125));
 sky130_fd_sc_hd__dlygate4sd3_1 hold112 (.A(\MCU.RF.reg_file[6][0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net126));
 sky130_fd_sc_hd__dlygate4sd3_1 hold113 (.A(\MCU.SPI_CTRL.addr_reg[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net127));
 sky130_fd_sc_hd__dlygate4sd3_1 hold114 (.A(\MCU.ALU.ovf_in ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net128));
 sky130_fd_sc_hd__dlygate4sd3_1 hold115 (.A(\MCU.SPI_CTRL.addr_reg[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net129));
 sky130_fd_sc_hd__dlygate4sd3_1 hold116 (.A(\MCU.SPI_CTRL.addr_reg[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net130));
 sky130_fd_sc_hd__dlygate4sd3_1 hold117 (.A(\MCU.ALU.status_in[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net131));
 sky130_fd_sc_hd__dlygate4sd3_1 hold118 (.A(\MCU.SPI_CTRL.addr_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net132));
 sky130_fd_sc_hd__dlygate4sd3_1 hold119 (.A(\MCU.PC.program_counter[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net133));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\MCU.PC.program_counter[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net26));
 sky130_fd_sc_hd__dlygate4sd3_1 hold120 (.A(\MCU.RF.reg_file[3][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net134));
 sky130_fd_sc_hd__dlygate4sd3_1 hold121 (.A(\MCU.RF.reg_file[1][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net135));
 sky130_fd_sc_hd__dlygate4sd3_1 hold122 (.A(\MCU.PC.program_counter[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net136));
 sky130_fd_sc_hd__dlygate4sd3_1 hold123 (.A(\MCU.RF.reg_file[5][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net137));
 sky130_fd_sc_hd__dlygate4sd3_1 hold124 (.A(\MCU.SPI_CTRL.addr_reg[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net138));
 sky130_fd_sc_hd__dlygate4sd3_1 hold125 (.A(\MCU.PC.program_counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net139));
 sky130_fd_sc_hd__dlygate4sd3_1 hold126 (.A(\MCU.SPI_CTRL.addr_reg[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net140));
 sky130_fd_sc_hd__dlygate4sd3_1 hold127 (.A(\MCU.IR.ir_data_in[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net141));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\MCU.PERI.periph_data_out[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net27));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\MCU.PC.program_counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net28));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\MCU.PC.program_counter[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net29));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\MCU.PERI.periph_data_out[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net30));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\MCU.PC.program_counter[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net31));
 sky130_fd_sc_hd__buf_1 hold18 (.A(\MCU.PERI.busy_flag ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net32));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(_0079_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net33));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\MCU.PERI.gpio_in_sync[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net16));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\MCU.PC.program_counter[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\MCU.PC.program_counter[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\MCU.SPI_CTRL.clock_counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(_0140_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\MCU.IR.ir_data_in[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\MCU.PERI.periph_data_out[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\MCU.PC.program_counter[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\MCU.PC.program_counter[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\MCU.PERI.periph_data_out[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\MCU.RF.reg_file[7][7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\MCU.PERI.gpio_in_sync[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net17));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\MCU.PERI.periph_data_out[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(\MCU.RF.reg_file[5][7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(\MCU.PC.program_counter[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(\MCU.RF.reg_file[6][7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\MCU.PERI.clock_counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(\MCU.RF.reg_file[2][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold36 (.A(\MCU.RF.reg_file[6][4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold37 (.A(\MCU.RF.reg_file[2][3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold38 (.A(\MCU.PERI.periph_data_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold39 (.A(\MCU.SPI_CTRL.addr_reg[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\MCU.PERI.gpio_in_sync[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net18));
 sky130_fd_sc_hd__dlygate4sd3_1 hold40 (.A(\MCU.RF.reg_file[7][2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold41 (.A(\MCU.PERI.periph_data_out[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold42 (.A(\MCU.RF.reg_file[4][2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold43 (.A(\MCU.SPI_CTRL.mem_type[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold44 (.A(\MCU.RF.reg_file[0][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold45 (.A(\MCU.RF.reg_file[1][7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold46 (.A(\MCU.RF.reg_file[1][6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold47 (.A(\MCU.RF.reg_file[3][6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold48 (.A(\MCU.RF.reg_file[0][2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold49 (.A(\MCU.RF.reg_file[6][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\MCU.SPI_CTRL.flash_cs_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net19));
 sky130_fd_sc_hd__dlygate4sd3_1 hold50 (.A(\MCU.RF.reg_file[1][2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold51 (.A(\MCU.RF.reg_file[0][4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold52 (.A(\MCU.RF.reg_file[4][5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold53 (.A(\MCU.RF.reg_file[7][6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold54 (.A(\MCU.RF.reg_file[4][3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold55 (.A(\MCU.RF.reg_file[3][7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold56 (.A(\MCU.RF.reg_file[5][6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold57 (.A(\MCU.RF.reg_file[5][3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold58 (.A(\MCU.RF.reg_file[7][3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net72));
 sky130_fd_sc_hd__dlygate4sd3_1 hold59 (.A(\MCU.RF.reg_file[2][0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net73));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\MCU.CPU_SEQ.state[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net20));
 sky130_fd_sc_hd__dlygate4sd3_1 hold60 (.A(\MCU.PERI.clock_counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net74));
 sky130_fd_sc_hd__dlygate4sd3_1 hold61 (.A(\MCU.RF.reg_file[6][3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net75));
 sky130_fd_sc_hd__dlygate4sd3_1 hold62 (.A(\MCU.RF.reg_file[2][2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net76));
 sky130_fd_sc_hd__dlygate4sd3_1 hold63 (.A(\MCU.RF.reg_file[1][0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net77));
 sky130_fd_sc_hd__dlygate4sd3_1 hold64 (.A(\MCU.RF.reg_file[5][0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net78));
 sky130_fd_sc_hd__dlygate4sd3_1 hold65 (.A(\MCU.RF.reg_file[4][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net79));
 sky130_fd_sc_hd__dlygate4sd3_1 hold66 (.A(\MCU.RF.reg_file[7][4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net80));
 sky130_fd_sc_hd__dlygate4sd3_1 hold67 (.A(\MCU.SPI_CTRL.addr_reg[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net81));
 sky130_fd_sc_hd__dlygate4sd3_1 hold68 (.A(\MCU.RF.reg_file[3][0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net82));
 sky130_fd_sc_hd__dlygate4sd3_1 hold69 (.A(\MCU.RF.reg_file[2][5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net83));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(_0008_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net21));
 sky130_fd_sc_hd__dlygate4sd3_1 hold70 (.A(\MCU.RF.reg_file[0][0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net84));
 sky130_fd_sc_hd__dlygate4sd3_1 hold71 (.A(\MCU.RF.reg_file[7][0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net85));
 sky130_fd_sc_hd__dlygate4sd3_1 hold72 (.A(\MCU.RF.reg_file[3][2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net86));
 sky130_fd_sc_hd__dlygate4sd3_1 hold73 (.A(\MCU.RF.reg_file[3][4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net87));
 sky130_fd_sc_hd__dlygate4sd3_1 hold74 (.A(\MCU.RF.reg_file[2][6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net88));
 sky130_fd_sc_hd__dlygate4sd3_1 hold75 (.A(\MCU.SPI_CTRL.addr_reg[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net89));
 sky130_fd_sc_hd__dlygate4sd3_1 hold76 (.A(\MCU.RF.reg_file[7][1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net90));
 sky130_fd_sc_hd__dlygate4sd3_1 hold77 (.A(\MCU.RF.reg_file[2][7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net91));
 sky130_fd_sc_hd__dlygate4sd3_1 hold78 (.A(\MCU.RF.reg_file[5][4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net92));
 sky130_fd_sc_hd__dlygate4sd3_1 hold79 (.A(\MCU.RF.reg_file[5][2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net93));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\MCU.CPU_SEQ.state[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net22));
 sky130_fd_sc_hd__dlygate4sd3_1 hold80 (.A(\MCU.RF.reg_file[2][4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net94));
 sky130_fd_sc_hd__dlygate4sd3_1 hold81 (.A(\MCU.RF.reg_file[4][4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net95));
 sky130_fd_sc_hd__dlygate4sd3_1 hold82 (.A(\MCU.RF.reg_file[6][6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net96));
 sky130_fd_sc_hd__dlygate4sd3_1 hold83 (.A(\MCU.RF.reg_file[1][4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net97));
 sky130_fd_sc_hd__dlygate4sd3_1 hold84 (.A(\MCU.RF.reg_file[0][7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net98));
 sky130_fd_sc_hd__dlygate4sd3_1 hold85 (.A(\MCU.RF.reg_file[1][3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net99));
 sky130_fd_sc_hd__dlygate4sd3_1 hold86 (.A(\MCU.RF.reg_file[4][6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net100));
 sky130_fd_sc_hd__dlygate4sd3_1 hold87 (.A(\MCU.RF.reg_file[6][2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net101));
 sky130_fd_sc_hd__dlygate4sd3_1 hold88 (.A(\MCU.RF.reg_file[3][3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net102));
 sky130_fd_sc_hd__dlygate4sd3_1 hold89 (.A(\MCU.PERI.periph_data_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net103));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\MCU.IR.cond_in ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net23));
 sky130_fd_sc_hd__dlygate4sd3_1 hold90 (.A(\MCU.RF.reg_file[6][5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net104));
 sky130_fd_sc_hd__dlygate4sd3_1 hold91 (.A(\MCU.RF.reg_file[4][0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net105));
 sky130_fd_sc_hd__dlygate4sd3_1 hold92 (.A(\MCU.RF.reg_file[0][6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net106));
 sky130_fd_sc_hd__dlymetal6s2s_1 hold93 (.A(\MCU.SR.status_write_en_in ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net107));
 sky130_fd_sc_hd__dlygate4sd3_1 hold94 (.A(_0190_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net108));
 sky130_fd_sc_hd__dlygate4sd3_1 hold95 (.A(\MCU.RF.reg_file[4][7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net109));
 sky130_fd_sc_hd__dlygate4sd3_1 hold96 (.A(\MCU.RF.reg_file[0][5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net110));
 sky130_fd_sc_hd__dlygate4sd3_1 hold97 (.A(\MCU.RF.reg_file[3][5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net111));
 sky130_fd_sc_hd__dlygate4sd3_1 hold98 (.A(\MCU.RF.reg_file[7][5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net112));
 sky130_fd_sc_hd__dlygate4sd3_1 hold99 (.A(\MCU.PERI.clock_counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net113));
 sky130_fd_sc_hd__clkbuf_4 input1 (.A(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(ui_in[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(uio_in[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(uio_in[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(uio_in[2]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(uio_in[3]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_4 max_cap10 (.A(_0590_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_2 max_cap7 (.A(_0622_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_2 max_cap8 (.A(_0255_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net8));
 sky130_fd_sc_hd__buf_1 max_cap9 (.A(_0235_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net9));
 sky130_fd_sc_hd__conb_1 tt_um_ja1tye_tiny_cpu_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(net11));
 sky130_fd_sc_hd__conb_1 tt_um_ja1tye_tiny_cpu_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(net12));
 sky130_fd_sc_hd__conb_1 tt_um_ja1tye_tiny_cpu_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(net13));
 sky130_fd_sc_hd__conb_1 tt_um_ja1tye_tiny_cpu_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(net14));
 assign uio_oe[4] = net11;
 assign uio_oe[5] = net12;
 assign uio_oe[6] = net13;
 assign uio_oe[7] = net14;
endmodule
