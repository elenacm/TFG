@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto ab9ed399701f43b9a54446d8a627f6f6 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Top_func_synth xil_defaultlib.Top -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
