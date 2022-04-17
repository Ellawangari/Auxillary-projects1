# AUX PROJECT 1: SHELL SCRIPTING

In this project , I created a Shell script to onboard 20 new Linux users onto a server.The shell script read the names.csv file which cointained the list of 20 users.

STEPS

1. Created a Shell folder and added a names.csv file on to which I added a list of users each on a new line.
     `mkdir Shell` `touch names.csv` 
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux2.PNG)
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux4.PNG)

2. Created a group called developers in which all the users created will belong to.
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux1.PNG)

3. Created a script file (onboarding.sh) which created the users in the name.csv file.
4. The script had to:
 - First to check the existence of the user on the system before attempting to create it.
 - Ensure the user created had a default home directory.
 - Ensure that each user had a ssh folder within the home directory and if not create it.
 - Ensure that for each user created a authorized_keys file was created and the public key of the current user was copied to the file.
    ![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux3.PNG)   
       ![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux8.PNG) 
          ![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux9.PNG) 
          
  5. On my ssh folder i created two files that will hold both the public and private key.
         ![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux5.PNG) 
   
  6. Tested a few users to ensure the could both connect to the server using the public key and private key.
  7. Had to confirm the users did not have  sudo rights  but using the `sudo apt update` command to test.
  
  **USER GABRIEL**

![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux11.PNG) 
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux12.PNG) 
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux13.PNG) 
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux14.PNG) 

**USER MARY**

![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux15.PNG) 
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux16.PNG) 
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux17.PNG) 
 
 **USER JAMES**
 
![alt text](https://github.com/Ellawangari/Auxillary-projects1/blob/main/Images/aux18.PNG) 

****I always enjoy getting to learn something new and with [darey.io](https://www.darey.io) PBL(Project Based Learning) Structure it makes it so exicting and easier to learn.****
 
