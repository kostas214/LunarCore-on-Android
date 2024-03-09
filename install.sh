nix-env -iA nixpkgs.nano nixpkgs.mongodb nixpkgs.jdk17 nixpkgs.wget nixpkgs.unzip
wget https://nightly.link/Melledy/LunarCore/workflows/build/development/LunarCore.zip
unzip LunarCore.zip
rm LunarCore.zip
mkdir resources
git clone https://github.com/Dimbreath/StarRailData
mv /StarRailData/Config /StarRailData/ExcelOutput /StarRailData/TextMap -r /resources
rm -rf StarRailData
git clone https://gitlab.com/Melledy/LunarCore-Configs
mv LunarCore-Configs/Config -r /resources
rm -rf LunarCore-Configs
cp start.sh ~/
cd
