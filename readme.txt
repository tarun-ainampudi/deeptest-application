Uninstall any previously installed Deep Testing apps.

Install 新版深度测试.apk.

Connect your device to the laptop with USB debugging enabled.

Make sure platform-tools are added to your system's PATH and that Java is installed to run .jar files.

Open the Deep Testing app you just installed (do not click "Apply" yet).

Run the run_me.py file.

You will see the message: 🔍 Starting logcat for PID: XXX...

Once the above message appears, click "Apply" in the app.

The terminal will display all the retrieved values.

Another Deep Testing app will be installed and launched automatically. Click "Apply" in this new app.

You will see a confirmation message indicating that the application was submitted successfully.

Cross-verify the submission by checking the query verification in the original app.

If the result indicates that the device does not support Deep Testing, change the model in model_change.py and try again.