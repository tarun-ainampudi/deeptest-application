@echo off
set PACKAGE_NAME=com.example.deeptesting

:: Rebuild APK
call apktool b org_deeptest -o mod_deeptest.apk

:: Sign APK
call java -jar uber-apk-signer.jar -a mod_deeptest.apk --out mod_deeptest

:: Uninstall existing app to avoid confirmation prompt
adb uninstall %PACKAGE_NAME%

:: Install the newly signed APK
call adb install .\mod_deeptest\mod_deeptest-aligned-debugSigned.apk

:: Launch the app
call adb shell monkey -p %PACKAGE_NAME% -c android.intent.category.LAUNCHER 1
