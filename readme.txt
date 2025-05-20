## 👤 What You Need To Do

Follow these steps carefully to run the automation successfully:

---

### ✅ 1. Install the Required Software

- **Java Runtime Environment (JRE)**  
  📥 [Download JRE](https://javadl.oracle.com/webapps/download/AutoDL?BundleId=252044_8a1589aa0fe24566b4337beee47c2d29)

- **Python 3.10 (Required)**  
  📥 [Download Python 3.10](https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe)

- Make sure **ADB (platform-tools)** is installed and added to your system's **PATH**.

---

### 🔧 2. Prepare Your Device

- **Uninstall** any previously installed *Deep Testing* apps.
- **Install** `新版深度测试.apk` manually.
- Enable **USB Debugging** from Developer Options.
- Connect your device to the PC via USB.

---

### 🧪 3. Run the Tool

- Double-click on `start.bat` to begin the automation.
- When you see: 🔍 Starting logcat for PID: XXXX...

👉 Click **Apply**.

- The tool will automatically:
- Read values like `token`, `chipId`, and `udid`.
- Repackage the modified app.
- Install it automatically.

- Once the second app opens, click **Apply** again.

---

### ✅ 4. Confirm Submission

- If successful, you will see a message:  
**“Application submitted successfully.”**

- Open the original app to **verify** the submission via the query section.

---

### 🔁 5. If Submission Fails

If you see a message like:
> "This device is not supported for Deep Testing"

Do the following:
- Open `model_change.py`
- Modify the `model`, `OTA`, or `ROM` values.
- Save and run `start.bat` again.

Repeat until submission succeeds.

