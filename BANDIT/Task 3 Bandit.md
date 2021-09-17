***
# **biOs Hardware**
_Narikodan Hridul_
***
***
## **Bandit Challenge**
>**MAIN AIM :-** To find password from one level which will help you to get into next level 


***
#### **Level 0**
##### The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. The username is bandit0 and the password is bandit0.The password for the next level is stored in a file called readme located in the home directory.
*  **ssh bandit0@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **bandit0** (Given password)
* **ls** (to see all folders) 
* **cat readme** (readme is the file inside and cat<filename> will read it)
* **exit** (we got the password hence we are exiting from the server)
>password = **boJ9jbbUNNfktd78OOpsqOltutMc3MY1** 
***

#### **Level 1**
##### The password for the next level is stored in a file called - located in the home directory.
*  **ssh bandit1@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **boJ9jbbUNNfktd78OOpsqOltutMc3MY1** (password)
* **ls** (file name was "-") 
* **cat ./-** ("cat -" wont work so "cat ./-" where ./ defines path of current directory)
* **exit** (we got the password hence we are exiting from the server)
>password =  **CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9**
***

#### **Level 2**
##### The password for the next level is stored in a file called spaces in this filename located in the home directory
*  **ssh bandit2@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9** (password)
* **ls** (file name was "spaces in this filename") 
* **cat "spaces in this filename"** ("cat <filename>" wont work if filename has spaces in between so using double quote with filename )
* **exit** (we got the password hence we are exiting from the server)
>password =  **UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK** 
***

#### **Level 3**
##### The password for the next level is stored in a hidden file in the inhere directory.
*  **ssh bandit3@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK** (password)
* **ls** (another folder "inhere") 
* **cd inhere** (getting inside the the folder inhere)
* **ls** (nothing inside it as the file is hidden)
* **ls -a** (shows all the file including hidden files )
* **cat .hidden** (reading ".hidden file")
* **exit** (we got the password hence we are exiting from the server)
>password =  **pIwrPrtPN36QITSp3EQaw936yaFoFgAB**
***

#### **Level 4**
##### The password for the next level is stored in the only human-readable file in the inhere directory.
* **ssh bandit4@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **pIwrPrtPN36QITSp3EQaw936yaFoFgAB** (password)
* **ls** (another folder "inhere") 
* **cd inhere** (getting inside the the folder inhere)
* **ls** (lot of files inwhich one is human readable)
* **file ./*** (returns details of all file in the current folder ,whether its data type or ASCII type where ASCII is the human readable form . Here "-file07" is ASCII)
* **cat ./-file07** (normal wont work as file name starts with "-")
* **exit** (we got the password hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%204.png?raw=true)
**Fig :** terminal screenshot for level 4 (to convey how I used command, more clearly)
>password = **koReBOKuIDDepwhWk7jZC0RTdopnAYKh**
***

#### **Level 5**
##### The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties: human-readable, 1033 bytes in size , not executable
*  **ssh bandit5@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **koReBOKuIDDepwhWk7jZC0RTdopnAYKh** (password)
* **ls** (another folder "inhere") 
* **cd inhere** (getting inside the the folder inhere)
* **ls** (lot of folders)
* **find ./ |xargs file| grep text** (returns data of all files in the current folder even if the files are in the subfolders, Here every files are ASCII)
* **find -size 1033c** (Here c means bytes. Search result = ./maybehere07/.file2 )
* **cat ./maybehere07/.file2** (password is printed)
* **exit** (we got the password hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%205%201.png?raw=true)
after many more file details
![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%205%202.png?raw=true)
**Fig :** terminal screenshot for level 5 (to convey how I used command, more clearly)
>password = **DXjZPULLxYr17uwoI01bNLQbtFemEgo7**
***

#### **Level 6**
##### The password for the next level is stored somewhere on the server and has all of the following properties: owned by user bandit7, owned by group bandit6, 33 bytes in size
*  **ssh bandit6@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **DXjZPULLxYr17uwoI01bNLQbtFemEgo7** (password)
* **ls** (no visible files)
* **ls -a** (some random hidden files)
* **find / -user bandit7 -group bandit6 -size 33c** (Here "/" symbolise search among everything in the server . Every path from the result is showing like permission denied except for one = /var/lib/dpkg/info/bandit7.password)
* **cat /var/lib/dpkg/info/bandit7.password** (password got)
* **exit** (we got the password hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%206%201.png?raw=true)
after many "permission denied"
![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%206%202.png?raw=true)
**Fig :** terminal screenshot for level 6 (to convey how I used command, more clearly)
>password = **HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs**
***

#### **Level 7**
##### The password for the next level is stored in the file data.txt next to the word millionth
* **ssh bandit7@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs**  (password)
* **ls** (file name was "data.txt") 
* **cat data.txt** (inside data.txt was many words which we cant count)
* **grep millionth data.txt** (Searches the word "millionth" in file data.txt )
* **exit** (we got the password hence we are exiting from the server)
>password =  **cvX2JJa4CFALtqS87jk27qwqGhBM9plV**
***

#### **Level 8**
##### The password for the next level is stored in the file data.txt and is the only line of text that occurs only once
* **ssh bandit8@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **cvX2JJa4CFALtqS87jk27qwqGhBM9plV** (password)
* **ls** (file name was "data.txt") 
* **cat data.txt** (full of garbage values)
* **sort data.txt | uniq -u** (searches for unique word in the given file)
* **exit** (we got the password hence we are exiting from the server)
>password =  **UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR**
***

#### **Level 9**
##### The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.
* **ssh bandit9@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR**  (password)
* **ls** (file name was "data.txt") 
* **cat data.txt** (unreadable long garbage value inside)
* **grep -a == data.txt** (long garbage value with password at the end)
* **exit** (we got the password hence we are exiting from the server)
>password =  **truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk**
***

#### **Level 10**
##### The password for the next level is stored in the file data.txt, which contains base64 encoded data
*  **ssh bandit10@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk**  (password)
* **ls** (file name was "data.txt") 
* **cat data.txt** (long encoded word )
* **base64 -d data.txt** (decoded and the password is printed)
* **exit** (we got the password hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2010.png?raw=true)
**Fig :** terminal screenshot for level 10 (to convey how I used command, more clearly)
>password =  **IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR**
***

#### **Level 11**
##### The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions
*  **ssh bandit11@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR**  (password)
* **ls** (file name was "data.txt") 
* **cat data.txt** (long rotated word )
* **cat data.txt | tr a-zA-Z n-za-mN-ZA-M** (rotating words by 13 position in opposite direction)
* **exit** (we got the password hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2011.png?raw=true)
**Fig :** terminal screenshot for level 11 (to convey how I used command, more clearly)
>password =  **5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu**
***


#### **Level 12**
##### The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work using mkdir.
*  **ssh bandit12@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu**  (password)
* **ls** (file name was "data.txt") 
* **cat data.txt** ( many set of 4 charectors)
* **mkdir /tmp/bios** (making a directory inside tmp directory)
* **cp data.txt /tmp/bios** (copying data.txt to the new directory)
* **cd /tmp/bios** (getting inside the directory)
* **xxd -r data.txt > data** (reversing the compression and outputing to a file 'data')
* **file data** (checking file type .Here , gzip compressed data)
* **mv data data.gz** (renaming with .gz extention)
* **gzip -d data.gz** (unzipping => data)
* **file data** (checking file type .Here , bzip2 compressed data)
* **bunzip2 data** (for bzip2, unzipping no need renaming if bunzip is used insted of bzip2. Here output file will be data.out)
* **file data.out** (checking file type .Here , gzip compressed data)
* **mv data.out data.gz** (renaming with .gz extention)
* **gunzip data.gz** (unzipping => data)
* **file data** (checking file type. Here , POSIX tar archive)
* **tar xf data** (extracting file from tar format)
* **ls** (new file appeared "data5.bin")
* **file data5.bin**(checking file type. Here , POSIX tar archive)
* **tar xf data5.bin** (extracting file from tar format)
* **ls** (new file appeared "data6.bin")
* **file data6.bin** (checking file type. Here , bzip2 compressed data)
* **bunzip2 data6.bin** (unzipping noneed renaming if bunzip is used insted of bzip2. here output file will be data6.bin.out)
* **file data6.bin.out** (checking file type. Here , POSIX tar archive)
* **tar xf data6.bin** (extracting file from tar format)
* **ls** (new file appeared "data8.bin")
* **file data8.bin** (checking file type. Here , bzip2 compressed data)
* **mv data8.bin data8.gz** (renaming)
* **gunzip data8.gz** (unzipping => data8)
* **ls** ("data8" was there)
* **file data8** (checking file type. Here , ASCII type)
* **cat data8** (readigng ASCII file to get password)
* **exit** (we got the password hence we are exiting from the server)

![](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/level%2012%20ss.jpg)
**Fig :** terminal screenshot for level 12 (to convey how I used command, more clearly)
>password =  **8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL**
***

#### **Level 13**
##### The password for the next level is stored in /etc/bandit_pass/bandit14 and can only be read by user bandit14. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. Note: localhost is a hostname that refers to the machine you are working on
*  **ssh bandit13@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL**  (password)
* **ls** (file name was "sshkey.private") 
* **ssh -i sshkey.private bandit14@localhost** ( Getting to next level for getting password. -i refers to identity file)
* **cat /etc/bandit_pass/bandit14** (the path is given in the qn . No need to exit as we are already in bandit14)
>password =  **4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e**
***

#### **Level 14**
##### The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.
* (we are already in logged into bandit14 from last level)
*  **nc localhost 30000** (nc refers to netcat )
* **4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e** (enter previous password to get next password)
* **exit** (we got the password hence we are exiting from the server bandit14 to bandit13)
* **exit** (again exiting, from bandit13)
>password =  **BfMYroe26WYalil77FoDi9qh59eK5xNr**
***

#### **Level 15**
##### The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL encryption.
*  **ssh bandit15@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **BfMYroe26WYalil77FoDi9qh59eK5xNr**  (password)
* **ncat --ssl localhost 30001** (ncat helps to use ssl encyption by --ssl command )
* **BfMYroe26WYalil77FoDi9qh59eK5xNr** (entering the previous password to get next password)
* **exit** (we got the password hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2015.png?raw=true)
**Fig :** terminal screenshot for level 15 (to convey how I used command, more clearly)
>password =  **cluFn7wTiGryunymYOu4RcffSxQluehd**
***

#### **Level 16**
##### The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. First find out which of these ports have a server listening on them. Then find out which of those speak SSL and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.
*  **ssh bandit16@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **cluFn7wTiGryunymYOu4RcffSxQluehd**  (password)
* **ls** (file name was "-") 
* **nmap localhost -p 31000-32000** (finding which all ports are actively listening . Output port = 31046, 31518, 31691, 31790, 31960)
* **ncat --ssl localhost 31790** (should check with all port like this and 31790 port gives the recquired output)
* **cluFn7wTiGryunymYOu4RcffSxQluehd** (the output after entering password is a long text which is a private key to login to bandit 17. Now copy that long private key)
* **cd /tmp**(getting inside tmp forlder to create a file with these private key copied above)
* **touch pvt.key**(file created)
* **nano pvt.key**(nano is a way of creating a file. Paste the priavte key and press 'ctrl' + 'x' to exit by confirming the file name and again press enter)
* **ssh badit17@localhost -i pvt.key** (type 'yes'. Warning message came showing permissions are bad)
* **ls -l pvt.key**(to see the permission . others have read permission also user have read and write [dont have run/excecuting] permission)
* **chmod 700**(Protects a file against any access from other users, while the issuing user the full access.)
* **ssh badit17@localhost -i pvt.key** (type 'yes' to get inside bandit17)
* **cat /etc/bandit_pass/bandit17**(to get password for logging into bandit17 in conventional method )

![](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/level%2016%20ss.jpg)
**Fig :** terminal screenshot for level 16 (to convey how I used command, more clearly)
>password =  **xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn** 
***

#### **Level 17**
##### There are 2 files in the homedirectory: passwords.old and passwords.new. The password for the next level is in passwords.new and is the only line that has been changed between passwords.old and passwords.new
*  (already logged in from previous level)
* **ls** ("passwords.new" and "passwords.old" were there)
* **diff password.old password.new** (difference in the files will be shown respectively and hence we get the password)
* **exit** (we got the password hence we are exiting from the server)
>password =  **kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd**
***

#### **Level 18**
##### The password for the next level is stored in a file readme in the homedirectory. Unfortunately, someone has modified .bashrc to log you out when you log in with SSH.
*  **ssh bandit18@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port>) 
* **kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd**  (password but its not able to login in this conventional method)
* **ssh bandit18@bandit.labs.overthewire.org -p2220 cat readme** (when given password it will print the password and then exit automatically. But only helps when password containing file name is known(Here given in the question)
* **kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd**  (password and new password will be printed) 

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2018%20ss%201.png?raw=true)
OR
* **ssh -t bandit18@bandit.labs.overthewire.org -p2220 /bin/sh** (forcing a psuedo terminal allocation which helps in overriding the bash.rc which is logging out us automatically)
* **kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd**  (password . U will login but the prompt will look little different)
* **cat readme** (reading "reamde" to get password)
* **exit** (we got the password hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2018%20ss%202.png?raw=true)
**Fig :** terminal screenshot for level 18 (to convey how I used command, more clearly)
>password =  **IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x**
 
***

#### **Level 19**
##### To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.
*  **ssh bandit19@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x**  (password)
* **ls** (file name was "bandit20-do") 
* **./bandit20-do** (executing without arguments as told in qn. It printed "Run a command as another user.")
* **./bandit20-do cat /etc/bandit_pass/bandit20** (done as told in above step .password printed)
* **exit** (we got the password hence we are exiting from the server)
>password =  **GbKksEFF4yrVs6il55v6gwY5aVje5f0j**
***

#### **Level 20**
##### There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).
*  **ssh bandit20@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **GbKksEFF4yrVs6il55v6gwY5aVje5f0j**  (password)
* **ls** (file name was "suconnect") 
* **./suconnect** ("This program will connect to the given port on localhost using TCP. If it receives the correct password from the other side, the next password is transmitted back." )
* (so we need two terminals . In the second terminal also, login into  bandit20)
* **cat /etc/bandit_pass/bandit20 | nc -l localhost -p 1234**(this has to written in second terminal . "1234" is port defined by us which we chose to be hearing )
* **./suconnect 1234** (this has to written in the first terminal. It will say that the new password is sent back and we can find it in the second terminal)
* **exit** (we got the password hence we are exiting from the server in both terminal)
* **Fig :**Terminal 1![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2020%20ss%201.png?raw=true)
* **Fig :**Terminal 2![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2020%20ss%202.png?raw=true) 
>password =  **gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr**
***

#3## **Level 21**
##### A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.
*  **ssh bandit21@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr** (password)
* **ls /etc/cron.d/** (some files in which "cronjob_bandit22" should be our recquired file ) 
* **cd /etc/cron.d/** (getting into that folder)
* **cat cronjob_bandit22** ("@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null ")
* **cat /usr/bin/cronjob_bandit22.sh** 
("#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv ". Opening the last command line from above output)
* **cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv** (opening the outputed file according to the above output. Password got)
* **exit** (we got the password hence we are exiting from the server)
>password =  **Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI**
***

#### **Level 22**
##### A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.
**NOTE: Looking at shell scripts written by other people is a very useful skill. The script for this level is intentionally made easy to read. If you are having problems understanding what it does, try executing it to see the debug information it prints.**

*  **ssh bandit22@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI** (password)
* **ls /etc/cron.d/** (some files in which "cronjob_bandit23" should be our recquired file ) 
* **cd /etc/cron.d/** (getting into that folder)
* **cat cronjob_bandit23**
("@reboot bandit23 /usr/bin/cronjob_bandit23.sh  &>/dev/null
 bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null")
* **cat /usr/bin/cronjob_bandit23.sh**
( #!/bin/bash
myname=$(whoami)
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)
echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"
cat /etc/bandit_pass/$myname > /tmp/$mytarget )
* **whoami** (checking the value of "myname" variable . Value = bandit22)
* **myname=bandit23** (assigning value as bandit23 to myname variable)
* **echo I am user $myname | md5sum | cut -d ' ' -f 1** (running the command written in the cronjob_bandit23.sh . Printed "8ca319486bfbbc3663ea0fbe81326349", which is the value of mytarget )
* **cat /tmp/8ca319486bfbbc3663ea0fbe81326349** (replaced mytarget by its value in the command line written in the cronjob_bandit23.sh and we got the password)
* **exit** (we got the password hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2022.png?raw=true)
**Fig :** terminal screenshot for level 22 (to convey how I used command, more clearly)
>password = **jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n** 
***

#### **Level 23**
##### A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.
**NOTE: This level requires you to create your own first shell-script. This is a very big step and you should be proud of yourself when you beat this level!
NOTE 2: Keep in mind that your shell script is removed once executed, so you may want to keep a copy around…**

*  **ssh bandit23@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n** (password)
* **cd /etc/cron.d/** (Getiing into the directory mentioned in the question . "cronjob_bandit24" is the file we recquired)
*  **cat cronjob_bandit24** 
(@reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
 bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null )
* **cat /usr/bin/cronjob_bandit24.sh** (opening the file mentioned in the above output
"#!/bin/bash
myname=$(whoami)
cd /var/spool/$myname
echo "Executing and deleting all scripts in /var/spool/$myname:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
        echo "Handling $i"
        owner="$(stat --format "%U" ./$i)"
        if [ "${owner}" = "bandit23" ]; then
            timeout -s 9 60 ./$i
        fi
        rm -f ./$i
    fi
done ")
* **mkdir /tmp/teambios** (making a directory in tmp directory)
* **cd /tmp/teambios** (getting inside the new directory)
* **vim bios.sh** (creating an executable script which is to be executed in the /var/spool/bandit24 and will output the password to a file in tmp direcotry 
"#!/bin/bash
cat /etc/bandit_pass/bandit24 > /tmp/bios123")
* **chmod 777 bios.sh** (giving all read,write,execute permission to everyone)
* **ls -l bios.sh** (confirming the permissions)
* **cp bios.sh /var/spool/bandit24** (copying the executable to the target directory where it will be executed and the password will be outputed to the /tmp/bios123. Wait for 60 seconds as the execution takes place only after every 60 seconds . after 60 seconds)
* **cat /tmp/bios123** (password got)
* **exit** (we got the password hence we are exiting from the server)

![](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/level%2023%20ss%201.png)
**Fig :** terminal screenshot for level 23 (to convey how I used command, more clearly)
>password =  **UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ**
***

#### **Level 24**
##### A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 combinations, called brute-forcing.
* **ssh bandit24@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
* **UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ**  (password)
* **nc localhost 30002** ("I am the pincode checker for user bandit25. Please enter the password for user bandit24 and the secret pincode on a single line, separated by a space.")
* **cd /tmp/bios** (getting inside a direcotry which was already created)
* **nano bandit.sh** (creating a shell script to make a trial and error for all cases from 0 - 9999 as a 4digit code for nc localhost 30002
 " #!/bin/bash
for pin in {0000..9999} : 
do
	echo "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $pin"
done | nc localhost 30002 ")
* **./bandit.sh** (running the shell script)
* **exit** (we got the pssword hence we are exiting from the server)

![](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/level%2024%20ss%201.png)
after many "Wrong! Please enter the correct pincode. Try again."
![](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/level%2024%20ss%202.png)
**Fig :** terminal screenshot for level 24 (to convey how I used command, more clearly)
>password =  **uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG**
***
#### **Level 25**
##### Logging in to bandit26 from bandit25 should be fairly easy… The shell for user bandit26 is not /bin/bash, but something else. Find out what it is, how it works and how to break out of it.
*  **ssh bandit25@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG** (password)
* **ls** (file name was "bandit26.sshkey")
* **cat bandit26.sshkey** (a long private key)
* **ssh bandit26@localhost -i bandit26.sshkey** (trying to login using private key. but it is logging in and logging out after printing "bandit 26" in visual type)
* **cat /etc/passwd** (to see what shell bandit26 is using instead of /bin/bash . It was /usr/bin/showtext )
![](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/level%2025%20ss%202.png)
* **cat /usr/bin/showtext** ("#!/bin/sh
export TERM=linux
more ~/text.txt
exit 0 " . Here text.txt is the reason for printing "bandit26" and more command is used which is helpful for crt viewing)
* **ssh bandit26@localhost -i bandit26.sshkey** (trying this again but with small terminal screen such that "bandit26" cannot be fully printed [or not fully visible], so that it will not be able to exit as the program didn't printed the recquired text completely)
![](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/level%2025%20ss%203.png)
* **v** (opening vim or editor when "more" function is still running. After this we can increase the size of the screen if needed)
* **:r /etc/bandit_pass/bandi26** (reading the password from the text editor)
* **exit** (we got the pssword hence we are exiting from the server)
>password = **5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z**
***


#### **Level 26**
##### Good job getting a shell! Now hurry and grab the password for bandit27!
*  **ssh bandit26@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z** (trying this with small terminal screen such that "bandit26" cannot be fully printed [or not fully visible], so that it will not be able to exit as the program didn't printed the recquired text completely)
* **v** (opening vim or editor when "more" function is still running. After this we can increase the size of the screen if needed)
* **: set shell=/bin/bash** (setting the shell as /bin/bash onstead of old /bin/showtext) 
![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2026%202.png?raw=true)
* **:shell** (calling for the shell to get the prompt of bandit26)
* **ls** ( "bandit27-do" is the recquired file)
* **./bandit27-do** (executing the file to know what to do. "Run a command as another user")
* **./bandit27-do cat /etc/bandit_pass/bandit27** (opening the file which have bandit 27 password)
* **exit** (we got the pssword hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2026%201.png?raw=true)
**Fig :** terminal screenshot for level 26 (to convey how I used command, more clearly)
>password = **3ba3118a22e93127a4ed485be72ef5ea**

 *** 


#### **Level 27**
##### There is a git repository at ssh://bandit27-git@localhost/home/bandit27-git/repo. The password for the user bandit27-git is the same as for the user bandit27
*  **ssh bandit27@bandit.labs.overthewire.org -p2220** ( to login into the server type "ssh <username>@<host> -p<port> )
*  **3ba3118a22e93127a4ed485be72ef5ea** (password)
* **ls* (empty)
* **mkdir /tmp/biosnew** (creating a directory for cloning the git repository as we cannot do it in the home directory)
* **cd /tmp/biosnew** (entering into the directory)
* **git clone ssh://bandit27-git@localhost/home/bandit27-git/repo**   (cloning the git repository to this directory. Type "yes" , then the previous password)
* **ls** (a directory named "repo")
* **cd repo** (getting inside)
* **ls** (a file named "README")
* **cat README** (we got the password)
* **exit**  (we got the pssword hence we are exiting from the server)

![](https://github.com/NARIKODANHRIDUL/test/blob/main/level%2027.png?raw=true)
**Fig :** terminal screenshot for level 27 (to convey how I used command, more clearly)
>password = **0ef186ac70e04ea33b4c1853d2526fa2**
***
***
### **All passwords at a glance**
* level 0 -> Level 1   = boJ9jbbUNNfktd78OOpsqOltutMc3MY1 
* level 1 -> Level 2   = CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9 
* level 2 -> Level 3   = UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK 
* level 3 -> Level 4   = pIwrPrtPN36QITSp3EQaw936yaFoFgAB 
* level 4 -> Level 5   = koReBOKuIDDepwhWk7jZC0RTdopnAYKh 
* level 5 -> Level 6   = DXjZPULLxYr17uwoI01bNLQbtFemEgo7 
* level 6 -> Level 7   = HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs 
* level 7 -> Level 8   = cvX2JJa4CFALtqS87jk27qwqGhBM9plV 
* level 8 -> Level 9   = UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR 
* Level 9 -> Level 10  = truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk 
* Level 10 -> Level 11 = IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR 
* Level 11 -> Level 12 = 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu 
* Level 12 -> Level 13 = 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL 
* Level 13 -> Level 14 = 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e 
* Level 14 -> Level 15 = BfMYroe26WYalil77FoDi9qh59eK5xNr 
* Level 15 -> Level 16 = cluFn7wTiGryunymYOu4RcffSxQluehd 
* Level 16 -> Level 17 = xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn 
* Level 17 -> Level 18 = kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd 
* Level 18 -> Level 19 = IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x 
* Level 19 -> Level 20 = GbKksEFF4yrVs6il55v6gwY5aVje5f0j 
* Level 20 -> Level 21 = gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr 
* Level 21 -> Level 22 = Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI 
* Level 22 -> Level 23 = jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n 
* Level 23 -> Level 24 = UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ 
* Level 24 -> Level 25 = uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG 
* Level 25 -> Level 26 = 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z 
* Level 26 -> Level 27 = 3ba3118a22e93127a4ed485be72ef5ea
* Level 27 -> Level 28 = 0ef186ac70e04ea33b4c1853d2526fa2
***
***
##  **--- THANK YOU 😃 ---**
***
***
