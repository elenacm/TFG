@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 0d935a89a05648bb8a573b3e348f1caa -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip --snapshot vga_top_behav xil_defaultlib.vga_top xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
