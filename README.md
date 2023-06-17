# CyberScape
Group 10 CyberScape

![UX Design excalidraw](https://github.com/Lim-D/CyberScape/assets/133747300/508e2312-2995-4bf4-9f86-282112e6793f)


## How to setup our the Java Web App "Bookify" Instructions

### Pre-Requisites:
Here are the pre-requisites of our Java Web App.

Intelli-J as our IDE:
https://portapps.io/download/intellij-idea-community-portable-win64-2023.1-53-setup.exe/

For Java, we chose Java SDK 20 - as it was the latest version at the time. It is imperative that it must be Java SDK 20, not 20.01 as those versions of Java are not the same.
https://download.oracle.com/java/20/archive/jdk-20_windows-x64_bin.exe

Lastly, MYSQL and MySQL Workbench. Here, we followed a YouTube video on how to setup MySQL for our database.
https://www.youtube.com/watch?v=u96rVINbAUI&t=0s

1. Install IntelliJ as the mere IDE for running the app, and then install MySQL for the data base of the App

--- MySQL Database Setup----

2.1 On MySQL workbench setup a new connection with the following important details
	- Connection Name: Database
	- Password in Store Vault: "nanakatalaga"
	- After the setup, press Test Connection

2.2 Open the Newly Created connection
	- Create a new query
	- On the new query type "CREATE DATABASE finals2" and then Execute the command
	- Check if the database was created on schemas before closing MySQL



--Setting Up and Running the Web App on IntelliJ

3.1 After downloading the project file, open IntelliJ and open a new file. 
	- Specifically open the folder "group10project"
	- Wait for the IDE to load the other folders and dependencies included.

3.2 After the loading process, go to the folders: 'src -> main -> java'. 

3.3 Then, choose the 'group10projectApplication' and press RUN.

3.4 After pressing Run, a notification will pop-up. In the notification just click the text that says "Enable annotation processing".

3.5 Wait until you see a text in the terminal that says "Started Group10projectApplication..."

3.6 Then Open a web browser and search for this link "localhost:8080"

3.7 Wait for the link to load, then create and account and enjoy the Web App.

	 
