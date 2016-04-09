cd /d "D:\Git\Windows-driver-samples\tools\sdv\samples\SDV-FailDriver-WDM\driver" &msbuild "fail_driver1.vcxproj" /t:sdvViewer /p:configuration="Debug" /p:platform=x64
exit %errorlevel% 