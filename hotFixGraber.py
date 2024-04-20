import requests
import base64
import blackboxprotobuf
import re
import json
import sys

dispatchSeed = "bba67d093e"
version = "OSPRODWin2.1.0"
url = f"https://prod-official-eur-dp01.starrails.com/query_gateway?version={version}&t=1713563129&uid=10004&language_type=3&platform_type=3&dispatch_seed={dispatchSeed}&channel_id=1&sub_channel_id=1&is_need_url=1&account_type=1&account_uid=307575403"
hotfixPatterns = {
    'assetBundleUrl': r'https://autopatchos.starrails.com/asb/V2.1Live/[\w_-]+',
    'exResourceUrl': r'https://autopatchos.starrails.com/design_data/V2.1Live/[\w_-]+',
    'luaUrl':  r'https://autopatchos.starrails.com/lua/V2.1Live/[\w_-]+',
    'ifixUrl': r'https://autopatchos.starrails.com/ifix/V2.1Live/[\w_-]+'
}

if len(sys.argv) == 1:
    onlineOrOffline = input("Online(1)/Offline(2):")
else:
    onlineOrOffline = sys.argv[1]
while True:
    if onlineOrOffline == str(1):
        try:
            request = requests.get(url)
            config = base64.b64decode(request.content)
            decode,messagetype = blackboxprotobuf.protobuf_to_json(config)
            for key, pattern in hotfixPatterns.items():
                idk = re.findall(pattern, decode)
                hotfixPatterns[key] = idk[0]
            with open('config.json', 'r+') as f:
                config = json.load(f)
            for i in hotfixPatterns.keys():
                config['downloadData'][i] = hotfixPatterns[i]
            with open('config.json', 'w') as f:
                json.dump(config, f, indent=4)
            break
        except:
            print("Oh no error falling back to offline mode")
            with open('config.json', 'r+') as f:
                config = json.load(f)
            for i in hotfixPatterns.keys():
                config['downloadData'][i] = None
            with open('config.json', 'w') as f:
                json.dump(config, f, indent=4)
            break
    elif onlineOrOffline == str(2):
        with open('config.json', 'r+') as f:
            config = json.load(f)
        for i in hotfixPatterns.keys():
            config['downloadData'][i] = None
        with open('config.json', 'w') as f:
            json.dump(config, f, indent=4)
        break
    else:
        onlineOrOffline = input("Online(1)/Offline(2):")



