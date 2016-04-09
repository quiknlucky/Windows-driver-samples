cd /d "D:\Git\Windows-driver-samples\tools\sdv\samples\SDV-FailDriver-KMDF\driver" &msbuild "fail_driver1.vcxproj" /t:sdvViewer /p:configuration="Debug" /p:platform=Win32
exit %errorlevel% 