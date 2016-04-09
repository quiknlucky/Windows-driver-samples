cd /d "D:\Git\Windows-driver-samples\tools\sdv\samples\SDV-FailDriver-STORPORT\driver" &msbuild "lsi_u3.vcxproj" /t:sdvViewer /p:configuration="Debug" /p:platform=Win32
exit %errorlevel% 