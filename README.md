# LunarCore-on-Android
A comprehensive guide on how to run the server implementation of a certain turn based anime game on your android device completly offline 

## Server Installation: 
1. Download and install Termux from [here](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk)
2. Open Termux
3. When you first open the application it may ask you for notifications permission press ok (android 13 and up)
4. After everything finishes copy the command bellow and paste it onto the terminal.
```sh
apt update && apt install git -y && git clone https://github.com/kostas214/LunarCore-on-Android.git && cd LunarCore-on-Android && chmod +x install.sh && ./install.sh
```
5. If the server fails to start type ```stop``` and type ```./start.sh``` (If the error persists restart your phone)
   
Congratulations you have succesfully installed the LunarCore server
## Client installation 
1. Download and install the latest modified game client from [here](https://github.com/kostas214/LunarCore-on-Android/releases)
2. Log in with any username and password

## Starting the server
1. Open Termux application
2. Copy and paste this command
```sh
./start.sh
```
3. Either choose online mode by typing ```1``` or offline mode by typing ```2```
4. If the server fails to start press ```ctrl``` using the buttons above keyboard and ```c``` and retry step 2 (If the error persists restart your phone)
5. Open the modified client
6. On the login screen you can use any username and password(After the first log-in the information will be saved and you will be loged-in automatically
7. Enjoy
## Stopping the server
1. Open the Termux application type ```stop``` to stop the server.
2. Type ```exit``` and press enter to exit the application.
## Updating
1. Download and update to the latest client from [here](https://github.com/kostas214/LunarCore-on-Android/releases)
2. Open Termux
3. Enter this command
 ```sh
 cd && cd LunarCore-on-Android && rm hotfix.json && git reset --hard HEAD~1 && git pull && . update.sh
```
## Credits 
1. The Lunar Core team [Their github page](https://github.com/Melledy/LunarCore)
2. Termux for making the application used in this tutorial [Their github page](https://github.com/termux/termux-app)

