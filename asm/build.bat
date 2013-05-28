@echo off
set ASM_OPTS=-80 -h -x3 -o20 -p70 -Ddb=.db -Dorg=.org -Dsll=sli -Ddw=.dw -Daseg=.cseg -Dend=.end

tasm %ASM_OPTS% alu_ops.s alu_ops.hex alu_ops.lst && ihex2vm alu_ops.hex alu_ops.vm
if errorlevel 1 pause
tasm %ASM_OPTS% alu_opsd.s alu_opsd.hex alu_opsd.lst && ihex2vm alu_opsd.hex alu_opsd.vm
if errorlevel 1 pause

tasm %ASM_OPTS% dat_mov.s dat_mov.hex dat_mov.lst && ihex2vm dat_mov.hex dat_mov.vm
if errorlevel 1 pause
tasm %ASM_OPTS% dat_movd.s dat_movd.hex dat_movd.lst && ihex2vm dat_movd.hex dat_movd.vm
if errorlevel 1 pause

tasm %ASM_OPTS% 180_ops.s 180_ops.hex 180_ops.lst && ihex2vm 180_ops.hex 180_ops.vm
if errorlevel 1 pause
tasm %ASM_OPTS% 180_opsd.s 180_opsd.hex 180_opsd.lst && ihex2vm 180_opsd.hex 180_opsd.vm
if errorlevel 1 pause

tasm %ASM_OPTS% int_ops.s int_ops.hex int_ops.lst && ihex2vm int_ops.hex int_ops.vm
if errorlevel 1 pause
tasm %ASM_OPTS% int_opsd.s int_opsd.hex int_opsd.lst && ihex2vm int_opsd.hex int_opsd.vm
if errorlevel 1 pause
tasm %ASM_OPTS% int_opss.s int_opss.hex int_opss.lst && ihex2vm int_opss.hex int_opss.vm
if errorlevel 1 pause
