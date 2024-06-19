apt install tur-repo -y && yes y|pkg upgrade && pkg install mongodb openjdk-17 wget curl rsync python3 -y
pip install blackboxprotobuf
pip install requests
rm -rf resources LunarCore.jar data
wget https://nightly.link/Melledy/LunarCore/workflows/build/development/LunarCore.zip
unzip LunarCore.zip
rm LunarCore.zip
mkdir data 
cd data 
wget https://raw.githubusercontent.com/Melledy/LunarCore/development/data/ActivityScheduling.json
wget https://raw.githubusercontent.com/Melledy/LunarCore/development/data/Banners.json
wget https://raw.githubusercontent.com/Melledy/LunarCore/development/data/RogueMapGen.json
cd ..
mkdir resources
git clone --depth 1 https://github.com/Dimbreath/StarRailData
cd StarRailData
mv Config ExcelOutput TextMap ~/LunarCore-on-Android/resources
cd ~/LunarCore-on-Android
rm -rf StarRailData
python3 hotFixGraber.py 1
chmod +x firstStart.sh
./firstStart.sh
