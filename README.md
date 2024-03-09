# LunarCore-on-Android
A comprehensive guide on how to run the server implementation of a certain turn based anime game on your android device completly offline 
## Client installation:
1. Download and install the modified game client from [here](https://github.com/Xuoos/StarRailProxy/releases/download/1.7/2.0_HSR_CustomServer_v1.7_Xuoos.apk)
2. Open the newly installed app select the checkbox (1) and click here (2)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step3.jpg" align="center" ></a>
3. Click here (If you missed the promt just restart the app)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step1.jpg" align="center" ></a>
4. Turn the switch off (1) then press the reload button (2)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step2.jpg" align="center" ></a>
5. After the game restarts log-in with any hoyoverse account and get into the game at least once to download all the data (You can download any extra language packs you may want from here)
6. You can leave the app without closing and the download will continue
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
## First Log-in
After downloading the game data from "Client installation" step
1. Open the app and click here (If you missed the promt just restart the app)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step1.jpg" align="center" ></a>
2. Turn the switch to the on position (1) and click the button as shown in the picture (2)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step4.jpg" align="center" ></a>
3. In the text box type ```http://127.0.0.1:5000``` and click on the button as shown in the picture
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step5.jpg" align="center" ></a>
4. Press on the button as shown in the picture
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step6.jpg" align="center" ></a>

The client has been succesfully configured 
## Starting the server
1. Open Nix-on-droid application
2. Copy and paste this command
```sh
. start.sh
```
3. Open the modified client
4. On the login screen you can use any username and password(After the first log-in the information will be saved and you will be loged-in automatically
5. Enjoy
## Stopping the server
1. Open the nix-on-droid application press ```ctrl``` using the buttons above keyboard and ```c```.
2. Type ```exit``` and press enter (the applicaiton will close automatically)
## Credits 
1. Me
2. The Lunar Core team [Their github page](https://github.com/Melledy/LunarCore)
3. Xuoos for providing the modified client of the game [Their github page](https://github.com/Xuoos/StarRailProxy)
4. Nix-on-droid team for making the application used in this tutorial [Their github page](https://github.com/nix-community/nix-on-droid) 

