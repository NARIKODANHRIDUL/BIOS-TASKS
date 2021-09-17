***
# **biOs Hardware**
_Narikodan Hridul_
***
***
## **Wireless Challenges**
***
### **Challenge 3**
> **Make a writeup explaining the concept of an IQ signal.**
***

#### **IQ Signal**
* **IQ Signals** are also known as **Quadrature signals**. It can also be called as IQ Data or IQ Samples. 
* Quadrature modulation refers to modulation that involves **I/Q signals**
* They play a major role in **Complex Radio Frequency signal modulation and demodulation** (can be in hardware or software).
* **Two Signals**(or sinusoids) are said to be **Quadrature** when they are **90 degree**(or π /2 radians) **apart in phase**.
* **Cosine** wave is considered as **in-phase component** and **Sine** wave is considered as **quadrature component** (According to convention).
* **Using Quadrature signals to modulate** ![](https://github.com/NARIKODANHRIDUL/test/blob/main/icos%20qsin%20.png?raw=true) Here **'I'** means **amplitude of in-phase signal** and **'Q'** means **amplitude of qudrature signals**. We get a cosine wave and sine wave when (Q=0 , I=1) and (Q=1, I=0) respectively.
* If **both Q and I is equal to 1** then we get a new sinusoid wave with phase shift of **45 degree**.
![](https://github.com/NARIKODANHRIDUL/test/blob/main/icos%20+%20qsin%20new.png?raw=true)
* Thereofore we can make **modulated Radio Frequency** by changing the values of I and Q.
* **Phasor diagam and Wave form**
![](https://raw.githubusercontent.com/NARIKODANHRIDUL/test/main/Phase_shifter_using_IQ_modulator.gif)
* **I-Q amplitude-phase table**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/icos%20qsin%20TABLE.png?raw=true)
This is how we can manipulate the **phase difference** of the resulting sinusoids by **changing the amplitude** of both in-phase signal and quadrature signal.
* **Radio Freequency Wave** have three main properties we can control **to encode information**
    * **Amplitude**
    * **Frequency**
    * **Phase**
* **Digital communication** systems work with **ones** and **zeros** which are easy to encode. 
   * In **Amplitude modulation**, a simple on/off switch is used to encode 1 and 0. And this type of modulation is the best among other modulation ![](https://github.com/NARIKODANHRIDUL/test/blob/main/amplitude%20shift.png?raw=true)
   * In **frequency modulation**, signals with two different frequencies is used to encode 1 and 0. ![](https://github.com/NARIKODANHRIDUL/test/blob/main/frequency%20shift.png?raw=true)
   * In **phase modulation**, shifting the signal by 180 degree is used to encode 1 and 0![](https://github.com/NARIKODANHRIDUL/test/blob/main/phase%20shift.png?raw=true)


**Advantages of Quadrature Amplitude Modulation**
* It transmit more bits of information
* It is more spectral efficient 
* It is the best method to be used when it comes to linear region of operation
* It has a low probability of error value.

**Constellation Diagram**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/constellation.png?raw=true )
**Fig:** Constellation diagram showing the method used along with the number of bits per symbol
* The term **“symbol”** means some unique combination of phase and amplitude (Here every single dots represent a symbol)
* **BPSK** - **Binary Phase-shift keying**
* **QPSK** - **Quadrature Phase-shift keying**
* **QAM** - **Quadrature Amplitude Modulation** - combining two amplitude modulation (AM) signals into a single channel
* Each box is known as **Quadrature diagram**. X-axis represent the in-phase part and Y-axis represent
the quadrature part.
    * ![](https://github.com/NARIKODANHRIDUL/test/blob/main/qpsk.png?raw=true)  **Fig-** Quadrature symbol with table containing amplitude and phase angles


***
***
##  **--- THANK YOU 😃 ---**
***
***