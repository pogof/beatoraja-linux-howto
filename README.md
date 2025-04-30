# How to install Beatoraja on Linux
(so I don't forget lol)


NOTE: Since it's Linux, some level of technical knowledge is required, I will only target Ubuntu based system, however I'm sure (and that is where the technical knowledge comes in handy) you can adapt the instructions to your targeted distribution.


## How to make it work

### Step 1: Download Beatoraja. DO NOT DOWNLOAD THE WINDOWS ONLY VERSION (beatoraja-x.x.x-jre-win64). Download the other two instead. 
https://mocha-repository.info/download.php

### Step 2: Make a folder and unpack Beatoraja into it.
For clearness I will call the folder `BeatorajaInstall` (However you can call it whatever you want).
In this folder should now be some folders, `beatoraja.jar`, `beatoraja-config.bat` and some other files.

### Step 3: Make sure you have OpenJDK-17 and liblwjgl (3.3.1 at least) installed
`sudo apt install openjdk-17-jdk liblwjgl-java`

### Step 4: Download JavaFX-SDK 17.0.15 (it is not bundled with Java anymore)
https://gluonhq.com/products/javafx/

### Step 5: Create folder `javafx-sdk` and extract the archive
File structure should now be 
```
BeatorajaInstall/
├── java-sdk/
│   ├── legal/...
│   └── lib/...
├── beatoraja.jar
├── Other folders and files
```

### Step 6: Download the start.sh from this repo and put it into the `BeatorajaInstall` folder
The file is already prepped with the "Locale fix" (https://github.com/wcko87/beatoraja-english-guide/wiki#locale-fix) (however it worked for me even without it).

If you don't wish to use the fix, simply delete ` -Dfile.encoding="UTF-8"` at the end of line 4.

You may need to switch what version of Java you are actively using with `sudo update-alternatives --config java` and select the `openjdk-17`.

Alternatively if you don't want to switch Java versions, use the command, copy the path to `openjdk-17` and use that instead of `java` on line 14 to set the version.
