nix-env -iA nixpkgs.nano nixpkgs.mongodb nixpkgs.jdk17 nixpkgs.wget nixpkgs.unzip
wget https://nightly.link/Melledy/LunarCore/workflows/build/development/LunarCore.zip
unzip LunarCore.zip
rm LunarCore.zip
mkdir resources
git clone https://github.com/Dimbreath/StarRailData
cd StarRailData
mv ExcelOutput TextMap ~/LunarCore-on-Android/resources
cd ..
rm -rf StarRailData
git clone https://gitlab.com/Melledy/LunarCore-Configs
cd LunarCore-Configs
mv Config ~/LunarCore-on-Android/resources
cd ..
rm -rf LunarCore-Configs
cp start.sh ~/
cd
