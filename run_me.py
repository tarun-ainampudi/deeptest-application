import subprocess
import re
import sys
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

def rebuild_and_install_apk():
    PACKAGE_NAME = "com.example.deeptesting"

    try:
        # Rebuild APK
        subprocess.run([r".\bin\apktool.bat", "b",  r".\bin\org_deeptest",
                       "-o",  r".\bin\mod_deeptest.apk"], check=True)

        # Sign APK
        subprocess.run(["java", "-jar", r".\bin\uber-apk-signer.jar", "-a",
                       r".\bin\mod_deeptest.apk", "--out", r".\bin"], check=True)

        # Uninstall existing app
        # ignore failure if app is not installed
        subprocess.run(["adb", "uninstall", PACKAGE_NAME], check=False)

        # Install the newly signed APK
        subprocess.run(
            ["adb", "install", ".\\bin\\mod_deeptest-aligned-debugSigned.apk"], check=True)

        # Launch the app
        subprocess.run(["adb", "shell", "monkey", "-p", PACKAGE_NAME,
                       "-c", "android.intent.category.LAUNCHER", "1"], check=True)

        print("\nAPK rebuilt, signed, installed, and launched successfully.\n")

    except subprocess.CalledProcessError as e:
        print(f"\nrebuild_and_install_apk\n")
        print(f"\nError during operation: {e}\n")

def check_python_version():
    required_major = 3
    required_minor = 10
    current_version = sys.version_info
    if (current_version.major, current_version.minor) < (required_major, required_minor):
        print(
            f"[ERROR] Python 3.10+ required. Found: {current_version.major}.{current_version.minor}")
        sys.exit(1)
    else:
        print(
            f"[OK] Python version {current_version.major}.{current_version.minor} detected.")


def check_jre_version():
    try:
        result = subprocess.run(
            ["java", "-version"], stderr=subprocess.PIPE, stdout=subprocess.PIPE, text=True)
        output = result.stderr  # Java version is sent to stderr
        match = re.search(r'version "(.*?)"', output)
        if match:
            version_str = match.group(1)
            major = int(version_str.split('.')[0]) if version_str.startswith(
                '1.') else int(version_str.split('.')[0])
            print(
                f"[OK] Java Runtime Environment version {version_str} detected.")
        else:
            print("[ERROR] Could not determine JRE version.")
            sys.exit(1)
    except FileNotFoundError:
        print("[ERROR] Java is not installed or not in PATH.")
        sys.exit(1)


def trash():
    if (os.path.exists(r".\bin\org_deeptest")):
        shutil.rmtree(r".\bin\org_deeptest")

    if (os.path.exists(r".\bin\mod_deeptest.apk")):
        os.remove(r".\bin\mod_deeptest.apk")

    if (os.path.exists(r".\bin\mod_deeptest")):
        shutil.rmtree(r".\bin\mod_deeptest")

    if (os.path.exists(r".\bin\mod_deeptest-aligned-debugSigned.apk")):
        os.remove(r".\bin\mod_deeptest-aligned-debugSigned.apk")

    if (os.path.exists(r".\bin\mod_deeptest-aligned-debugSigned.apk.idsig")):
        os.remove(r".\bin\mod_deeptest-aligned-debugSigned.apk.idsig")


if __name__ == "__main__":

    check_python_version()

    check_jre_version()

    print("\n\nLoading Values from model_change.py.....\n")

    otaversion = model_change.otaversion
    colorosversion = model_change.colorosversion
    androidversion = model_change.androidversion
    trackregion = model_change.trackregion
    uregion = model_change.uregion
    operator = model_change.operator
    romversion = model_change.romversion
    product_name = model_change.product_name
    chipId = model_change.serial_id
    udid = model_change.imei
    
    if not (chipId and udid):
        print("Replace imei and serial_id in model_change.py and run again...")
        sys.exit(0)

    trash()

    subprocess.run([r".\bin\apktool.bat", "d", r".\bin\org_deeptest.apk",
                    "-o", r".\bin\org_deeptest"], check=True)

    replacements = [
        # RequestService$ReqList.smali
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
            "search": "replacemewithyourmodel",
            "replace": product_name
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
            "search": "replacemewithyourotaversion",
            "replace": otaversion
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
            "search": "replacemewithyouroperator",
            "replace": operator
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
            "search": "replacemewithyourserialid",
            "replace": chipId
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali",
            "search": "replacemewithyourimei",
            "replace": udid
        },

        # Utils.smali
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
            "search": "replacemewithyourmodel",
            "replace": product_name
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
            "search": "replacemewithyourotaversion",
            "replace": otaversion
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
            "search": "replacemewithyourromversion",
            "replace": romversion
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
            "search": "replacemewithyourcolorosversion",
            "replace": colorosversion
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
            "search": "replacemewithyourandroidversion",
            "replace": androidversion
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
            "search": "replacemewithyourtrackregion",
            "replace": trackregion
        },
        {
            "file": r".\bin\org_deeptest\smali\com\example\deeptesting\utils\Utils.smali",
            "search": "replacemewithyoururegion",
            "replace": uregion
        }
    ]

    # Group replacements by file
    file_replacements = defaultdict(list)
    for item in replacements:
        file_replacements[item["file"]].append(
            (item["search"], item["replace"]))

    for file_path, changes in file_replacements.items():
        # Read file content
        with fileinput.FileInput(file_path, inplace=True, backup='.bak', encoding='utf-8') as file:
            for line in file:
                for search, replace in changes:
                    line = line.replace(search, replace)
                print(line, end='')
    print("\nSmali files updated with extracted values.\n")

    rebuild_and_install_apk()

    trash()
