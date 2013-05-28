@echo off
set ASM_OPTS=-80 -h -o20 -p70 -Ddb=.db -Dorg=.org -Dsll=sli -Ddw=.dw -Daseg=.cseg -Dend=.end
tasm %ASM_OPTS% alu_ops.s alu_ops.hex alu_ops.lst
if errorlevel 1 pause
tasm %ASM_OPTS% alu_opsd.s alu_opsd.hex alu_opsd.lst
if errorlevel 1 pause

tasm %ASM_OPTS% dat_mov.s dat_mov.hex dat_mov.lst
if errorlevel 1 pause
tasm %ASM_OPTS% dat_movd.s dat_movd.hex dat_movd.lst
if errorlevel 1 pause
