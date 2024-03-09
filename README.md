# LunarCore-on-Android
A comprehensive guide on how to run the server implementation of a certain turn based anime game on your android device 
## Client installation:
1. Download and install the modified game client from [here](https://github.com/Xuoos/StarRailProxy/releases/download/1.7/2.0_HSR_CustomServer_v1.7_Xuoos.apk)
2. Open the newly installed app select the checkbox (1) and click here(2)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step3.jpg" align="center" ></a>
3. Click here (If you missed the promt just restart the app)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step1.jpg" align="center" ></a>
4. Turn the switch off (1) then press the reload button (2)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step2.jpg" align="center" ></a>
5. After the game restarts log-in with any hoyoverse account and get into the game at least once to download all the data (You can download any extra language packs you may want from here)
## Server Installation: 
1. Download and install F-droid [here](https://f-droid.org/)
2. Open F-droid and search for "Nix-on-Droid" and install the app
3. Open Nix-on-Droid
4. When you first open the application it may ask you for notifications permission (android 13 and up) and a prompt for "Bootstrap zipball location" will appear and you need to click on yes (The bootstrap setup may fail and ask you to retry. Press on try again)
5. When the installation of bootstrap packages finishes you will need to write ```y``` and press enter on your keyboard
6. Wait for everything to finish(It will take a while so be patient. If it looks like its stuck, its not be patient it will eventually finish)
7. After everything finishes copy the command bellow and paste it onto the terminal by long pressing and clicking paste (This too will take a while be patient)
```sh
nix-channel --add https://nixos.org/channels/nixos-22.05 nixpkgs && nix-channel --update && nix-env -iA nixpkgs.git && git clone https://github.com/kostas214/LunarCore-on-Android.git && cd LunarCore-on-Android && . install.sh
```
Congratulations you have succesfully installed the LunarCore server
