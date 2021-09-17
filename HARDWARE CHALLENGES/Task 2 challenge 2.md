***
***
# **biOs Hardware - Task 2**
_Narikodan Hridul_
***
***
## **Challenge 2 - 7Sniff**
>**Aim :-** While testing our hardware challenge we tapped the communication happening between 7 segment display and a shift register and obtained some data, but due to a faulty display, we were unable to see the flag. Find a way to use the code to display the flag on 7-segment. 
    **Hint: Tinkercad loves LSB first.**
    **Flag format {FLAG= . . . . }**
**[**TinkerCad circuit**](https://www.tinkercad.com/things/i4zM833ITGZ) - Given in the Challenge 1**
  
***
 #### **The New Given Data**
>**66 , 56 , 43 , 115 , 142 , 28 , 238 , 188 , 18 , 206 , 123 , 28 , 188**
***
#### **Key points**
> **ShiftOut()  :-** It Shifts out a byte(binary form) of data one bit at a time at a faster rate.
 **Shift Register :-** It recieves binary bits one by one from Arduino with the help of shiftOut() function and send all the bits of a particular data at once, to the 7 segment display.
 **7 Segment Display  :-** It takes data from shift register as binary numbers
The  bits of the binary numbers of each integer value is used to turn ON(1) and OFF(0) each segment of the 7 segment display. 
![7 Segment display ](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/8FLAG.jpg) 

| Tables  | A  | B  |  C |  D | E  | F  | G  |DP  | charector formed  |
| ------  |---:|---:|---:|---:|---:|---:|---:|---:|:-----------------:|
| bin(142)|  1 | 0  |  0 |  0 | 1  | 1  | 1  |  0 |  F                |
| bin(28 )|  0 | 0  |  0 |  1 | 1  |  1 | 0  |  0 |  L                |      
| bin(238)|  1 | 1  |  1 |  0 | 1  | 1  | 1  |  0 |  A                |      
| bin(188)|  1 | 0  |  1 |  1 | 1  | 1  | 0  |  0 |  G                | 
>Table for showing how each binary numbers forms a particular charectors
***
#### **FINDING THE FLAG**

* Initially we are given a [**TinkerCad circuit** ](https://www.tinkercad.com/things/i4zM833ITGZ) (challenge 1), where shift register is used to display certain charectors in the 7 Segment Display. The breif working of this TinkerCad Circuit can be explained as  : -
    *  It receives two integer from the user .
    * Add those two integers to a predefined array which already have 5 integers in it, where those 5 integers are used for displaying "FLAG=" in 7 Segment Display
    * Then each integers are converted to binary numbers and send to shift register ,and then to 7-Segment Display 
* We are also given a new set of data which is sent from shift register to 7 Segment Display
* Now we will edit the code of the above circuit by avoiding all unnecessary lines of code like... TAKING TWO INTEGERs INPUT , ADDING TWO INTEGERs TO THE ARRAY , etc.
* [**New TinkerCad circuit** ](https://www.tinkercad.com/things/klJprhK1zRh-copy-of-challenge-2-new-code/editel?sharecode=e4-uCqsRweJkjMv1lwzmPoq6YnYTczZZkYyI9WQf9sw) code will be having - 
    * new data in the array(named num[])  with array size =13
    * lines of code for displaying charectors one after the other in 7 Segment Display
    * lines of code for displaying data and binary equvalent of data in LCD Display
* New code :-![New Code](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/code2.jpg)
***
>**Output from 7 Segment Display one after the other:-**
![flag](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/flag%3Dpdlg.jpg)

>Since , first four charectors are invalid and flag format is {FLAG= . . . .} (4 letters)
##### **Therfore, FLAG = PdLG**

***
***
##  **--- THANK YOU 😃 ---**
***
***
