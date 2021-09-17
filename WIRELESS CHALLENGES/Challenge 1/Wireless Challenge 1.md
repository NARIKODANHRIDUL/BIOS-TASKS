***
# **biOs Hardware**
_Narikodan Hridul_
***
***
## **Wireless Challenges**
***
### **Challenge 1**
> **Make a GNURadio flowgraph that takes an audio input from your sound card and maps its frequency domain representation**
***

##### **Signal processing and GNU Radio**
**Signal processing** is a branch of electrical engineering which mainly focuses on analysis, modification and synthesis of signals like sound, images, speech coding, transmission in digital communication etc. .
Here we use **GNU Radio**, an open-source software which provides signal processing blocks for implementing software radios. It have a lot of predefined blocks having specific function needed for signal processing. It also allow us to create a user-defined block with the functions we recquire to manipulate signals.

##### **Flowgraph**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/sound%20card.png?raw=true)

##### **Blocks**
Here **input** is taken using Audio Source block. Then **converts** its float value, to complex. Then **repesenting** the sound waves in frequency domain representaion.
* **Options** - It recquires id (same as python file name) and title (same as .grc file name)
* **Audio Source** - Sample rate is given as 48000 Hz (48 kHz allows for better sounding anti-aliasing filters)
* **Variable** - id= samp_rate and value is given as 48000 Hz. 
* **Float to complex** - It just take loat values convert to complex and give it as output.(Audio source values is always float)
* **QT GUI Frequency Sink** - It graphical sink to display multiple signals in frequency .Here it displays with the help of Relative gain-frequency graph (FFT size- 1024, Centre frequency- 0, bandwidth- samp_rate)

##### **Output screen**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/sound%20card%20freequency%20domain%20representation.png?raw=true) **Fig:** Relative gain-frequency graph output (frequency domain representation)


***
***
##  **--- THANK YOU 😃 ---**
***
***