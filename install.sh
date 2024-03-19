nix-env -iA nixpkgs.nano nixpkgs.mongodb nixpkgs.jdk17 nixpkgs.wget nixpkgs.unzip nixpkgs.rsync
wget https://github.com/Melledy/LunarCore/releases/download/v1.2.0/LunarCore.jar
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
cp start.sh ~/
cd
