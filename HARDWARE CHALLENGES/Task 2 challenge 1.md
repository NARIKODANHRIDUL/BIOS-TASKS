***
# **biOs Hardware - Task 2**
_Narikodan Hridul_
***
## Challenge 1
>**Aim :-** To find values of 'a' & 'b' which helps to get the Flag value from the given [TinkerCad circuit](https://www.tinkercad.com/things/i4zM833ITGZ)

##### **For finding 'a'**
![figure 1 -marked ](https://raw.githubusercontent.com/NARIKODANHRIDUL/narikodan-hridul/main/fig%201%20marked.jpg) 
**_Figure: Given figure from question (with numbers marked for each gate)_**

>Here a= (ABCD1110)decimal Where bInary values of A,B,C & D should be found from the above figure such that the output of the logic circuit become 1 (Bulb glows)

* for the Bulb to glow output of (8) should be 1. 
   * (8) = (6) & (7) that means (6) and (7) should be 1
* If (6) has to be 1 , D should be equal to 1.  Therefore, **D=1**
* Since (7) is an OR GATE , either of the input should be 1 
   * Here (2) is 0 beacuse its an AND GATE and one of the input is !(D) = 0
* Now (5) has to be 1 for (7) to be 1. 
   * Input of (5) is (3) and D , where D =1 
   * So (3) has to be 1 that means all its input should be 1 as (3) is an AND GATE
   *  Therefore **A=1 , !( B ) = 1, !( C ) = 1** 
*  Therefore,  **A=1, B=0, C=0, D=1**
> **a = (ABCD1110)decimal = (10011110)decimal = 158**
***

##### **For finding 'b'**
![Figure 2](https://raw.githubusercontent.com/NARIKODANHRIDUL/narikodan-hridul/main/fig%202%20MARKED.jpg) **_Figure : Given figure 2 from the question (with numbers marked for some gate)_**
> Here b= (EBXACDYZ)decimal . Given values, **A=0, X=0, C=1, D=1, E=1**
* Here , X = 0 = output from (2)
   * 0 = !((1) && B ) , Therefore both (1) and B should be equal to 1 (**B = 1**)
* Here Y= output of (4)
    * Inputs of (4) are 3 and D . Since (4) is an AND GATE and D=1, **Y = 1**
* Here Z= output of (6) 
    * Since E=1, (5) = (0 && 1) = 0. Therefore, (6)= (0 || 0) = 0. Hence, **Z = 0** 
* Therefore, **B = 1, Y = 1, Z = 0**
> **b = (EBXACDYZ)decimal = (11001110)decimal = 206**
***
#### **For finding Flag**

> We should enter the values of **a** and **b** in the given [TinkerCad circuit](https://www.tinkercad.com/things/i4zM833ITGZ) and the **flag** will be displayed in the 7 segment display
* Here a = 158 and b = 206 
* Output from the 7 segment display is **EP**
![E](https://raw.githubusercontent.com/NARIKODANHRIDUL/narikodan-hridul/main/E.JPG) ![P](https://raw.githubusercontent.com/NARIKODANHRIDUL/narikodan-hridul/main/P.JPG)
>Therefore, **FLAG = EP**
