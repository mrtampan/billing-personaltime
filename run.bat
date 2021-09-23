@echo off
title Simple Timer With Batch Script
echo Masukan Nama Anda :
set /p "nam="
:WAK
cls
echo Pilih Waktu Pakai (a/b/c/d):
echo a. 1 Jam  b. 2 Jam
echo c. 3 Jam  d. Tentukan Sendiri..
set /p "wak="
if %wak%==a goto WAKA
if %wak%==b goto WAKB
if %wak%==c goto WAKC
if %wak%==d goto WAKD
echo Pilih a/b/c/d !
goto WAK
:WAKA
cls
echo Nama User : %nam%
echo Bermain Selama : 1 Jam 
echo Anda yakin ? (Y/N)
set /p "yak="
if %yak%==N goto WAK
if %yak%==Y goto TIGA
echo Pilih Y/N!
goto WAKA
:TIGA
shutdown /c "Melakukan Shutdown Setelah 1 Jam!" /r /t 3600 
exit
:WAKB
cls
echo Nama User : %nam%
echo Bermain Selama : 2 Jam
echo Anda yakin ? (Y/N)
set /p "kin="
if %kin%==N goto WAK
if %kin%==Y goto TUJU
echo Pilih Y/N!
goto WAKB
:TUJU
shutdown /c "Melakukan Shutdown Setelah 2 Jam!" /r /t 7200 
exit
:WAKC
cls
echo Nama User : %nam%
echo Bermain Selama : 3 Jam
echo Anda yakin ? (Y/N)
set /p "ykn="
if %ykn%==N goto WAK
if %ykn%==Y goto SEPU
echo Pilih Y/N!
goto WAKC
:SEPU
shutdown /c "Melakukan Shutdown Setelah 3 Jam!" /r /t 10800 
exit
:WAKD
cls
echo Nama User : %nam%
echo Bermain Selama :
set /p "cus="
shutdown /c "Melakukan Shutdown Setelah %cus% Detik!" /r /t %cus% 
exit