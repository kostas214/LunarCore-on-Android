rm -rf resources LunarCore.jar
wget https://nightly.link/Melledy/LunarCore/workflows/build/development/LunarCore.zip
unzip LunarCore.zip
rm LunarCore.zip
mkdir resources
git clone https://github.com/Dimbreath/StarRailData
cd StarRailData
mv Config ExcelOutput TextMap ~/LunarCore-on-Android/resources
cd ~/LunarCore-on-Android/resources/Config 
rm -rf ConfigSummonUnit LevelOutput
cd ~/LunarCore-on-Android
rm -rf StarRailData
git clone https://gitlab.com/Melledy/LunarCore-Configs
cd LunarCore-Configs
rsync -a Config ~/LunarCore-on-Android/resources
cd ..
rm -rf LunarCore-Configs
