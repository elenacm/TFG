@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 0a9ce50fe4e14a06940eab116b1390da -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot top_tb_behav xil_defaultlib.top_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
