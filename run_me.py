import subprocess
import re
import json
import fileinput
import os
import shutil
import model_change   
from collections import defaultdict


def get_pid(package_name):
    """Get the PID of the Android app using adb shell pidof"""
    try:
        pid = subprocess.check_output(
            ['adb', 'shell', 'pidof', package_name],
            stderr=subprocess.DEVNULL,
            text=True
        ).strip()
        return pid if pid else None
    except subprocess.CalledProcessError:
        print("Waiting for the app to start...", end='\r')
        return None


def extract_values_live(pid):
    """Start logcat, extract values live, and stop when done"""
    print(f"🔍 Starting logcat for PID: {pid}...")
    token = chipId = udid = None
    json_re = re.compile(r'requestString:(\{.*\})')

    process = subprocess.Popen(
        ['adb', 'logcat', f'--pid={pid}'],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True
    )

    try:
        for line in process.stdout:
            # print(line, end='')  # Show on console

            match = json_re.search(line)
            if match:
                try:
                    data = json.loads(match.group(1))
                    token = data.get('token', token)
                    chipId = data.get('chipId', chipId)
                    udid = data.get('udid', udid)
                except json.JSONDecodeError:
                    continue

                if token and chipId and udid:
                    print("\n✅ All values captured. Stopping logcat.")
                    process.terminate()
                    break
    except KeyboardInterrupt:
        print("\n⛔ Logcat stopped by user.")
        process.terminate()

    return token, chipId, udid


def rebuild_and_install_apk():
    PACKAGE_NAME = "com.example.deeptesting"

    try:
        # Rebuild APK
        subprocess.run(["apktool.bat", "b", "org_deeptest",
                       "-o", "mod_deeptest.apk"], check=True)

        # Sign APK
        subprocess.run(["java", "-jar", "uber-apk-signer.jar", "-a",
                       "mod_deeptest.apk", "--out", "mod_deeptest"], check=True)

        # Uninstall existing app
        # ignore failure if app is not installed
        subprocess.run(["adb", "uninstall", PACKAGE_NAME], check=False)

        # Install the newly signed APK
        subprocess.run(
            ["adb", "install", ".\\mod_deeptest\\mod_deeptest-aligned-debugSigned.apk"], check=True)

        # Launch the app
        subprocess.run(["adb", "shell", "monkey", "-p", PACKAGE_NAME,
                       "-c", "android.intent.category.LAUNCHER", "1"], check=True)

        print("APK rebuilt, signed, installed, and launched successfully.")

    except subprocess.CalledProcessError as e:
        print(f"Error during operation: {e}")


if __name__ == "__main__":
    package_name = "com.coloros.deeptesting"
    token = chipId = udid = None
    
    otaversion = model_change.otaversion
    colorosversion = model_change.colorosversion
    androidversion = model_change.androidversion
    trackregion = model_change.trackregion
    uregion = model_change.uregion
    operator = model_change.operator
    model = model_change.model
    romversion = model_change.romversion 

    while not (token and chipId and udid):
        pid = get_pid(package_name)
        if pid:
            token, chipId, udid = extract_values_live(pid)

    print(
        f"\n🎯 Final Values:\n\nToken: {token}\n\nChip ID: {chipId}\n\nUDID: {udid}\n\n")

    # ".\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali"
    # "replacemewithyourserialid"
    # "replacemewithyourimei"
    # ".\org_deeptest\smali_classes2\com\heytap\usercenter\accountsdk\AccountAgent.smali"
    # replacemewithyourtoken

    # Example: Replace values in smali files based on extracted data
    
    replacements = [
    # RequestService$ReqList.smali
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
        "search": "replacemewithyourmodel",
        "replace": model
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
        "search": "replacemewithyourotaversion",
        "replace": otaversion
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
        "search": "replacemewithyouroperator",
        "replace": operator
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
        "search": "replacemewithyourserialid",
        "replace": chipId
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
        "search": "replacemewithyourimei",
        "replace": udid
    },

    # Utils.smali
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
        "search": "replacemewithyourmodel",
        "replace": model
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
        "search": "replacemewithyourotaversion",
        "replace": otaversion
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
        "search": "replacemewithyourromversion",
        "replace": romversion
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
        "search": "replacemewithyourcolorosversion",
        "replace": colorosversion
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
        "search": "replacemewithyourandroidversion",
        "replace": androidversion
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
        "search": "replacemewithyourtrackregion",
        "replace": trackregion
    },
    {
        "file": r".\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
        "search": "replacemewithyoururegion",
        "replace": uregion
    },
    
    # AccountAgent.smali
    {
        "file": r".\org_deeptest\smali_classes2\com\heytap\usercenter\accountsdk\AccountAgent.smali",
        "search": "replacemewithyourtoken",
        "replace": token
    }
    ]

    # Group replacements by file
    file_replacements = defaultdict(list)
    for item in replacements:
        file_replacements[item["file"]].append((item["search"], item["replace"]))

    for file_path, changes in file_replacements.items():
        # Read file content
        with fileinput.FileInput(file_path, inplace=True, backup='.bak', encoding='utf-8') as file:
            for line in file:
                for search, replace in changes:
                    line = line.replace(search, replace)
                print(line, end='')
    print("✅ Smali files updated with extracted values.")

    # Run ./install.bat
    # subprocess.run(["cmd", "/Q", "/C", "install.bat"], check=True)

    rebuild_and_install_apk()
    
    files_to_restore = []
    
    for item in replacements:
        if os.path.exists(item["file"] + '.bak') and item["file"] not in files_to_restore:
            files_to_restore.append(item["file"])

    for item in files_to_restore:
        original_file = item
        backup_file = original_file + '.bak'

        # Restore only if backup exists
        if os.path.exists(backup_file):
                # Remove the modified file
                os.remove(original_file)
                # Rename .bak file back to original
                shutil.move(backup_file, original_file)
                print(f"✅ Restored: {original_file}")
        else:
            if not os.path.exists(original_file):
                print(f"❌ No file found for: {original_file}")