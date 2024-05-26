import requests
import base64
import blackboxprotobuf
import re
import json
import sys

dispatchSeed = "cd3cd8494d"
version = "2.2"
versionType= "Live"
url = f"https://prod-official-eur-dp01.starrails.com/query_gateway?version=OSPRODWin{version}.0&t=1713563129&uid=10004&language_type=3&platform_type=3&dispatch_seed={dispatchSeed}&channel_id=1&sub_channel_id=1&is_need_url=1&account_type=1&account_uid=307575403"
hotfixPatterns = {
    'assetBundleUrl': rf'https://autopatchos.starrails.com/asb/V{version}{versionType}/[\w_-]+',
    'exResourceUrl': rf'https://autopatchos.starrails.com/design_data/V{version}{versionType}/[\w_-]+',
    'luaUrl':  rf'https://autopatchos.starrails.com/lua/V{version}{versionType}/[\w_-]+',
    'ifixUrl': rf'https://autopatchos.starrails.com/ifix/V{version}{versionType}/[\w_-]+'
}

if len(sys.argv) == 1:
    onlineOrOffline = input("Online(1)/Offline(2):")
else:
    onlineOrOffline = sys.argv[1]
while True:
    if onlineOrOffline == str(1):
        try:
            request = requests.get(url)
            hotfix = base64.b64decode(request.content)
            decode,messagetype = blackboxprotobuf.protobuf_to_json(hotfix)
            for key, pattern in hotfixPatterns.items():
                idk = re.findall(pattern, decode)
                hotfixPatterns[key] = idk[0]
            with open('hotfix.json', 'r+') as f:
                hotfix = json.load(f)
            for i in hotfixPatterns.keys():
                hotfix[i] = hotfixPatterns[i]
            with open('hotfix.json', 'w') as f:
                json.dump(hotfix, f, indent=4)
            break
        except:
            print("Oh no error falling back to offline mode")
            with open('hotfix.json', 'r+') as f:
                hotfix = json.load(f)
            for i in hotfixPatterns.keys():
                hotfix[i] = None
            with open('hotfix.json', 'w') as f:
                json.dump(hotfix, f, indent=4)
            break
    elif onlineOrOffline == str(2):
        with open('hotfix.json', 'r+') as f:
            hotfix = json.load(f)
        for i in hotfixPatterns.keys():
            hotfix[i] = None
        with open('hotfix.json', 'w') as f:
            json.dump(hotfix, f, indent=4)
        break
    else:
        onlineOrOffline = input("Online(1)/Offline(2):")



