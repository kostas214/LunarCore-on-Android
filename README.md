# LunarCore-on-Android
A comprehensive guide on how to run the server implementation of a certain turn based anime game on your android device completly offline 

## Server Installation: 
1. Download and install Termux from [here](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk)
2. Open Termux
3. When you first open the application it may ask you for notifications permission press ok (android 13 and up)
4. After everything finishes copy the command bellow and paste it onto the terminal by long pressing and clicking paste (This too will take a while be patient)
```sh
pkg install git && git clone https://github.com/kostas214/LunarCore-on-Android.git && cd LunarCore-on-Android && . install.sh
```
5. If the server fails to start type ```stop``` and type ```. start.sh```
   
Congratulations you have succesfully installed the LunarCore server
## Client installation 
1. Download and install the modified game client from [here](https://github.com/Xuoos/StarRailProxy/releases/download/1.9_/2.1_HSR_CustomServer_v1.9_Xuoos.apk)
2. Open the newly installed app select the checkbox (1) and click here (2)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step3.jpg" align="center" ></a>
3. Open the app and click here (If you missed the promt just restart the app)
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step1.jpg" align="center" ></a>
4. Click the button as shown in the picture 
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step7.jpg" align="center" ></a>
5. In the text box type ```http://127.0.0.1:5000``` and click on the button as shown in the picture
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step5.jpg" align="center" ></a>
6. Press on the button as shown in the picture
<a href="https://github.com/kostas214/LunarCore-on-Android"><img src="https://github.com/kostas214/LunarCore-on-Android/blob/main/Images/Step6.jpg" align="center" ></a>
8. Wait for the data to download and you can play 
## Starting the server
1. Open Nix-on-droid application
2. Copy and paste this command
```sh
. start.sh
```
3. If the server fails to start press ```ctrl``` using the buttons above keyboard and ```c``` and retry step 2
4. Open the modified client
5. On the login screen you can use any username and password(After the first log-in the information will be saved and you will be loged-in automatically
6. Enjoy
## Stopping the server
1. Open the nix-on-droid application type ```stop``` to stop the server.
2. Type ```exit``` and press enter to exit the application.
## Updating
1. Download and update to the latest client from [here](https://github.com/Xuoos/StarRailProxy/releases) (make sure you are downloading an apk about 200mb)
2. Open Nix-on-Droid
3. Enter this command
 ```sh
 cd && cd LunarCore-on-Android && git reset --hard HEAD~1 && git pull && . update.sh
```
## Credits 
1. Me
2. The Lunar Core team [Their github page](https://github.com/Melledy/LunarCore)
3. Xuoos for providing the modified client of the game [Their github page](https://github.com/Xuoos/StarRailProxy)
4. Nix-on-droid team for making the application used in this tutorial [Their github page](https://github.com/nix-community/nix-on-droid) 

