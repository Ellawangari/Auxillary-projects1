#Shell Scripting

#!/bin/bash


userfile=$(cat names.csv)
PASSWORD=password 

#Ensure the user runnning this script has sudo privillege
#if ["$(id -u)"=="0"];then
#Reading the csv file
for user in $userfile;
 do 
 #userdel -r $user
if id "$user" &>/dev/null
then
  echo "User Exist"
else
#To create user
useradd -m -d /home/$user -s /bin/bash -g developers $user
echo "New User Created"
echo

#Create an ssh folder in the users home folder
su --c "mkdir ~/.ssh" $user
echo ".ssh directory created for new user"
echo
#set the user permission for ssh dir
su --c "chmod 700 ~/.ssh" $user
echo "user permission for .ssh directory set"
echo

#This will create the an authorized key file
su --c "touch ~/.ssh/authorized_keys" $user
echo "Authorized key file created"
echo


#Set permission for the Key file
su --c "chmod 600 ~/.ssh/authorized_keys" $user
echo "user permission for the authorized key file set"
echo

#Create and set public key for users in the server

cp -R "/home/hellen/Shell/id_rsa.pub" "/home/$user/.ssh/authorized_keys"
echo "Copied the public ke to the new user account on the server"
echo
echo

   echo "USER CREATED"


#Generate a password
sudo echo -e "$PASSWORD\n$PASSWORD" | sudo passwd "$user"
sudo passwd -x 5 $user
      fi 
    done
