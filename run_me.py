import subprocess
import re
import json
import fileinput

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


if __name__ == "__main__":
    package_name = "com.coloros.deeptesting"
    token = chipId = udid = None

    while not (token and chipId and udid):
        pid = get_pid(package_name)
        if pid:
            token, chipId, udid = extract_values_live(pid)

    print(f"\n🎯 Final Values:\n\nToken: {token}\n\nChip ID: {chipId}\n\nUDID: {udid}\n\n")
    
    #".\org_deeptest\smali\com\example\deeptesting\service\RequestService$ReqList.smali"
    #"replacemewithyourserialid"
    #"replacemewithyourimei"
    #".\org_deeptest\smali_classes2\com\heytap\usercenter\accountsdk\AccountAgent.smali"
    #replacemewithyourtoken
    
    # Example: Replace values in smali files based on extracted data

    replacements = [
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
        {
            "file": r".\org_deeptest\smali_classes2\com\heytap\usercenter\accountsdk\AccountAgent.smali",
            "search": "replacemewithyourtoken",
            "replace": token
        }
    ]

    for item in replacements:
        if item["replace"]:
            with fileinput.FileInput(item["file"], inplace=True, backup='.bak', encoding='utf-8') as file:
                for line in file:
                    print(line.replace(item["search"], item["replace"]), end='')
    print("✅ Smali files updated with extracted values.")

    # Run ./install.bat
    subprocess.run(["cmd", "/Q", "/C", "install.bat"], check=True)
    
    for item in replacements:
        if item["search"]:
            with fileinput.FileInput(item["file"], inplace=True, backup='.bak', encoding='utf-8') as file:
                for line in file:
                    print(line.replace(item["replace"], item["search"]), end='')
    print("✅ Smali files updated with default values.")
    
    subprocess.run(["cmd", "/c", "del /s /q .\\*.bak"], shell=True)