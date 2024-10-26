apt install tur-repo -y && yes y|pkg upgrade && pkg install mongodb openjdk-17 wget curl rsync python3 -y
chmod +x update.sh
chmod +x start.sh
chmod +x firstStart.sh
pip install blackboxprotobuf
pip install requests
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
git clone --depth 1 https://gitlab.com/Dimbreath/turnbasedgamedata.git
cd turnbasedgamedata
mv Config ExcelOutput TextMap ~/LunarCore-on-Android/resources
cd ~/LunarCore-on-Android
rm -rf turnbasedgamedata
cp start.sh ~/
chmod +x start.sh
python3 hotFixGraber.py 1
./firstStart.sh
