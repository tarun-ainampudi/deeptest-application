## What You Need To Do
---

### 1. Install the Required Software

- [Java Runtime Environment (JRE)](https://javadl.oracle.com/webapps/download/AutoDL?BundleId=252044_8a1589aa0fe24566b4337beee47c2d29)

- [Python 3.10](https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe)

- Make sure **ADB (platform-tools)** is installed and added to your system's **PATH**.

---

### 2. Prepare Your Device

- **Uninstall** any previously installed *Deep Testing* apps.
- Enable **USB Debugging** from Developer Options.
- Connect your device to the PC via USB.

---

### 3. Run the Tool

- Replace the *imei* and *serial_id* in *model_change.py*.
- Double-click on `start.bat` to begin the automation.
- Once the app opens, click **Apply**.

---

### 4. Confirm Submission

- If successful, you will see a message: **“Application submitted successfully.”**

- Wait for the application to get approved.

---

### 5. If Submission Fails

If you see a message like:
> "This device is not supported for Deep Testing"

Do the following:
- Open `model_change.py`
- Update model specific values.
- Save and run `start.bat` again.

