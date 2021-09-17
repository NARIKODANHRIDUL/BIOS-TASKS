***
# **biOs Hardware**
_Narikodan Hridul_
***
***
## **Wireless Challenges**
***
### **Challenge 2**
> **Make 2 GNU Radio flowgraphs implementing an AM Receiver and Transmitter and test its working. You can refer to the GNU Radio wiki for necessary details**
***

##### **AM Transmitter flowgragh**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/am%20transmitter.png?raw=true)

##### **Blocks**
* **Options** - It recquires id (same as python file name) and title (same as .grc file name)
* **Audio Source** - Sample rate is given as 48000 Hz (48 kHz allows for better sounding anti-aliasing filters)
* **Variable** - id= samp_rate and value is given as 768000 Hz. This value is taken to give  48khz carrier frequency, 16 samples per cycle (48000 x 16 = 768000)  .
* **Repeat** - interpolation value is taken as 16. It will make digital audio sound better than it really is.
* **QT GUI Range** - it will provide a slider (can choose a value from a range of values). Here it is used to adjust the audio gain(volume - variable name) as we will multiply this variable with the amplitude of the orginal sound. (id- volume, default value- 1.2, start- 0, stop- 10.0, step- 0.1)
* **Multiply const** - The volume of the sound wave will be multiplied with the value given in this block, which is "volume" (variable) that means, as the slider is moved, we can see changes in the amplitude of the sound wave. (constant - volume)
* **Add const** - by adding constant 1, it creates the carrier, when no audio is present
* **Signal Source** - It creates the carrier signal(Sample Rate- samp_rate, Frequency- 48000, Amplitude- 0.5)
* **Multiply** - It will just multiply all the inputs and give the product as output.
* **QT GUI Time Sink** - It gives a visual representation of the transmitted signal (Number of points: 4096, Sample Rate- samp_rate, Number of Inputs- 2)
* **ZMQ PUB Sink** - This block acts a a streaming sink in GNU Radio. It publishes the recieved messages to a ZMQ PUB socket.


##### **Output screen at inital stage**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/am%20transmitter%20output.png?raw=true) **Fig:** Amplitude-time graph output when no sound is produced(Audio gain = 1.2)

##### **Output screen while speaking into the microphone (Testing)**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/am%20transmitter%20output%20with%20sound.JPG?raw=true)**Fig:** Amplitude-time graph output when sound is produced(Audio gain = 7.4). Change in the pattern on the QT GUI Time Sink when speaking into the microphone
***


##### **AM Reciever flowgragh**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/am%20receiver.png?raw=true)

##### **Blocks**
* **Options** - need id (same as python file name) and title (same as .grc file name)
* **Variable** - id= samp_rate and value is given as 768kHz. This value is taken to give  48khz carrier frequency, 16 samples per cycle (48kHz x 16 = 768kHz)  
* **variable** - id= decim (for defining th th decimation factor) , value= 16 (since speaker uses the sample rate of 48kHz, we will reduce the incoming sample rate by a factor of 16)
* **ZMQ PUB Sink** - This block acts a a streaming sink in GNU Radio. It receives the messages it got from ZMQ PUB socket (Transmitter section).   
* **QT GUI Range** - it will provide a slider (can choose a value from a range of values). Here it is used to adjust the Volume(variable name) as we will multiply this variable with the amplitude of the orginal sound. (id- Volume, default value- 0.3, start- 0, stop- 1.0, step- 0.05)
* **Frequency Xlating FIR Filter** - It will perform 3 function(frequency translation, filtering and decimation). [ Type: Float->Complex (Real Taps), Decimation: decim, Taps: firdes.low_pass(1,samp_rate,samp_rate/(2*decim), 2000), Center Frequency: 48000, Sample Rate- samp_rate ]
    * **Frequency translation** is the process of shifting a signal from one frequency to another, without loss of information in the signal
    * **Filtering** is the process of only allowing, the sound wave of frequency in a given range.
    * **Decimation** is the process of reducing the sampling rate
* **AGC** - AGC stnads for Automatic Gain Control. It adjusts the input signal to the given reference level (1.0).
* **complex to Mag** - It calculates the magnitude of the complex samples which produces the original modulation signal.
* **Band Pass Filter** - It filters the signal between a low and high cutoff frequency (FIR Type- Float->Float (Real Taps)(Decim), Decimation- 1, Gain- 1, Sample Rate- int(samp_rate/decim), Low Cutoff Freq- 500, High Cutoff Freq- 6000, Transition Width-  400)
* **Multiply const** - The volume of the sound wave will be multiplied with the value given in this block, which is "volume" (variable) that means, as the slider is moved.....we can see changes in the amplitude of the sound wave. (constant - volume)
* **QT GUI Time Sink** - It gives a visual representation of the transmitted signal (Number of points: 256, Sample Rate- int(samp_rate/decim), Number of Inputs- 1)
* **Audio Sink** - audio sink can have multiple inputs depending upon your hardware. For example, set the inputs to 2 for stereo or 1 for mono. Audio Sink will throttle for you. If you do end up using an already-throttled signal source, then set "OK to Block" to No.(Sample rate- 48kHz, OK to Block- Yes)


##### **Output screen at inital stage**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/am%20reciever%20output.png?raw=true) **Fig:** Amplitude-time graph output when no sound is produced (volume = 0.3000)

##### **Output screen while speaking into the microphone (Testing)**
![](https://github.com/NARIKODANHRIDUL/test/blob/main/am%20reciever%20output%20testing.JPG?raw=true)**Fig**: Amplitude-time graph output of both transmitter and reciever when sound is produced. Change in the pattern on both QT GUI Time Sinks can be seen and also we can hear the voice from the speakers.

***
***
##  **--- THANK YOU 😃 ---**
***
***
