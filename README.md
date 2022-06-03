**Predictive Maintenance of Compressor Water Pumps**

Applying sensor fusion with RSL10 and Bosch sensors to run a TinyML
model for predictive maintenance of compressor water pumps.

Hardware: onsemi RSL10-SENSE-GEVK

Sensors:

1.  BME680 - environmental sensor (temperature, humidity, pressure, air
    > quality)

2.  BHI160 - 3−axis accelerometer, gyroscope

Software: Neuton Tiny ML Neuton, OnSemi IDE

**Introduction**

An ordinary resident of a metropolis rarely thinks about how water
enters taps or central heating pipes, and may not even have an idea of
what a compressor water pump looks like. But in reality, it's hard to
picture life without water pumps as no one likes not being able to take
a hot shower in the morning, after all.

In some countries, the situation is even more acute. I'm from the
Jharkhand state of India, and in some places, access to processed
potable water is very difficult so people have to rely on underground
water. In such cases, water pumps are the only option. But ordinary men
don\'t have the skills, time, and know-how for water pump maintenance,
and if heavy wear and tear occurs, people have to wait for almost a week
for the pump to be repaired.

Like any other machines, water pumps should undergo maintenance and
repairs like lubricating, cleaning, changing air filters, and inspecting
the machine for potential problems, so it's important to address any
potential concerns before they cause serious issues. Instead of taking
reactive measures when the damage has already happened, people can make
use of **ML-based predictive maintenance** that will help to avoid any
severe issues and extend the life of a compressor pump.

With RSL10 sensors and Neuton AI, I've built a fast scalable solution
for compressor water pump predictive maintenance. Let\'s watch a demo to
see how the solution works:

**[[https://vimeo.com/710116997]{.underline}](https://vimeo.com/710116997)**

### **👩‍🏭Predictive Maintenance VS Reactive Maintenance?**

Predictive maintenance is a type of **troubleshooting** that addresses
needs before they turn into problems. This process helps you prevent
equipment breakdowns rather than waiting until a concern reveals itself.

![image.png](./images/media/image4.jpg){width="6.5in"
height="3.861111111111111in"}

Reactive maintenance requires far less forethought but can cost a lot.
Predictive maintenance requires more planning, but it can pay off in big
ways, as we'll see. Of course, it's not possible to predict every
problem, but you can avoid a lot of unexpected machinery issues.

**🌊 Importance of water pumps**

Water pumps have several areas of use: residential, industrial, and
commercial, depending on their features. But the functions of all these
pumps remain the same -- they all transport water and other liquids from
one place to another.

![image.png](./images/media/image11.jpg){width="5.796875546806649in"
height="3.590896762904637in"}

In this project, I used **RSL10, the industry's lowest power Bluetooth®
5 SoC, and several sensors from ON Semiconductor and Bosch**.

![image.png](./images/media/image1.png){width="5.796875546806649in"
height="2.7772484689413823in"}

**Key Features**

-   Arm® Cortex®−M3 Processor Clocked at up to 48 MHz

-   Supply Voltage Range: 1.1 − 3.3 V

-   384 kB of Flash Memory

-   76 kB of Program Memory

-   88 kB of Data Memory

-   \~10 yrs battery operation on deep sleep mode

**Advanced Wireless features:**

-   Bluetooth 5.2 Certified with LE 2−Mbit PHY (High Speed), as well as
    > Backwards Compatibility and Support for Earlier

-   Supports FOTA (Firmware Over−The−Air) Updates

-   Rx Sensitivity (Bluetooth Low Energy Mode, 1 Mbps): −93 dB

-   Transmitting Power: −17 to +6 dBm

-   Range up to 100 Meters

### **🔥 Sensor Fusion**

Sensor fusion is the process of combining
[sensor](https://en.wikipedia.org/wiki/Sensor) data or data derived from
disparate sources so that the resulting
[information](https://en.wikipedia.org/wiki/Information) can be more
accurate. Sensor fusion creates a situation in which the whole is much
greater than the sum of its parts. These mechanisms provide a way to
resolve contradictory situations and allow the development of dynamic
sensing strategies. Sensor fusion is also known as (multi-sensor) [data
fusion](https://en.wikipedia.org/wiki/Data_fusion) and is a subset of
[information
fusion](https://en.wikipedia.org/wiki/Information_integration).

> *The concept of data fusion has origins in the evolved capacity of
> humans and animals to incorporate information from multiple senses to
> improve their ability to survive. For example, a combination of sight,
> touch, smell, and taste may indicate whether a substance is edible.*

Sensor fusion, machine learning, and connectivity enable context
awareness, and context awareness enables a new generation of services.

### **What is Context?**

Context is defined as the circumstances or facts that form the setting
for an event, statement, situation, or idea. In software programming,
the idea of developing context-aware applications has been around for a
while. Context-aware apps examine who, where, when, and what. The
software designer uses this contextual information to determine why a
situation is happening and then encodes some action in the application.

![image.png](./images/media/image8.jpg){width="5.203125546806649in"
height="3.2494225721784775in"}

Based on this definition, the four most important categories of
information to formulate a context-aware action are:

-   Identification

-   Location

-   Time

-   Activity

### **Procedure**

### 

### **Step 1: Data Collection**

![image.png](./images/media/image3.jpg){width="5.432292213473316in"
height="2.6162871828521435in"}

  ----------------------------------------------------------------------------
  **Feature**   **Unit**     **Description**              **Role in project**
  ------------- ------------ ---------------------------- --------------------
  head          degree       Euler angles express         to understand tilt,
                             rotation of the object as a  placement and
                             sequence of three rotations  position of the pump
                             around objects' local        
                             coordinate axes              

  pitch         degree                                    

  bank          degree                                    

                                                          

  xLinear       g            Acceleration means the       to understand the
                             changing rate of velocity(V) rate of change of
                             to time                      velocity for the
                                                          pump

  yLinear       g                                         

  zLinear       g                                         

                                                          

  xRotate       degree/s     Representation of how fast   to understand the
                             the angular position or      rate of shaky
                             orientation of an object     motion, vibrations
                             changes in time              

  yRotate       degree/s                                  

  zRotate       degree/s                                  

                                                          

  temperature   C            Pump breakdowns often result Machine surface
                             from abnormal vibrations     temperature
                             with an unusual rise in      
                             temperature                  

  humidity      \%           Higher humidity reduces the  Surrounding humidity
                             efficiency of water          
                             compressor pumps             

  pressure      hPa          A decrease in inlet pressure Air pressure near
                             will reduce the density of   the machine
                             the air at the compressor    
                             intake                       
  ----------------------------------------------------------------------------

*Note: Vibration means the state of an object moving repetitively
back/forward, right/ left or up/down and is generally expressed by
Frequency, Displacement, Velocity, and Acceleration.*

As shown above, we will set up our data collection stage for our
compressor water pump with RSL10 device sensors. To do so, we need to
configure our IDE for programming first.

1\. Visit the website
<https://www.onsemi.com/products/wireless-connectivity/wireless-rf-transceivers/rsl10-sip>
and download the required IDE and SDK packages.

![tempsnip.png](./images/media/image22.jpg){width="5.994792213473316in"
height="3.7371380139982504in"}

2\. Follow this official manual for importing the CMSIS pack in the
OnSemi IDE. <https://www.onsemi.com/pub/collateral/evbum2614-d.pdf>

3\. Copy the BH160 Sensor Hub example in your workspace.

![image.png](./images/media/image12.jpg){width="6.5in"
height="3.4305555555555554in"}

4\. We can modify the example code to build a dataset for our project.

![image.png](./images/media/image24.jpg){width="6.5in" height="3.5in"}

**Hardware Setup**

![image.png](./images/media/image10.jpg){width="5.328125546806649in"
height="4.431564960629921in"}

The pump heats so I tried to use a rough enclosure to protect the RSL10
sensor board from any damage. Once the setup is complete, we are ready
to print all the sensor values and prepare our dataset.

> printf(\"%.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f,
> %.2f, %.2f \\n\", sensorFusion.h, sensorFusion.p, sensorFusion.b,
> sensorFusion.xlinear, sensorFusion.ylinear, sensorFusion.zlinear,
> sensorFusion.xrotate, sensorFusion.yrotate, sensorFusion.zrotate,
> sensorFusion.pressure, sensorFusion.temperature,
> sensorFusion.humidity);

![Coin cell.gif](./images/media/image26.gif){width="6.5in"
height="3.6527777777777777in"}

The sensor values would be printed on the J-Link RTT Viewer.\
Video:
[[https://vimeo.com/713236259]{.underline}](https://vimeo.com/713236259)

Once we are ready with the data collection part, we will proceed to
training a Neuton model and running inference.

![Screenshot (2).png](./images/media/image2.jpg){width="6.5in"
height="3.625in"}

Check out the dataset summary:

![](./images/media/image25.png){width="6.5in"
height="3.5972222222222223in"}

### **Step 2: Model Training**

On the Neuton platform, upload your dataset, and select \'output\' as
the target variable.\
\
Neuton by default uses cross-validation which gives perfect metric
results for created models. But I also uploaded a holdout dataset to
measure metrics on data that were not seen during model training.

![](./images/media/image18.png){width="6.432292213473316in"
height="3.2679549431321084in"}

In this case, our goal is to define the action mode on the pump based on
provided feature values so we will solve the classification task.

![](./images/media/image23.png){width="6.5in" height="3.625in"}

Toggle the DSP option and select Windows size auto selection and start
training.\
In the automatic mode, the optimal window size will be selected. Plus,
additional features will be generated from the data and then feature
selection will occur.

![](./images/media/image19.png){width="6.5in"
height="4.430555555555555in"}

Some minutes after the training start, we can explore variable-to-target
relation features and data analysis
charts.![](./images/media/image15.png){width="6.5in"
height="4.680555555555555in"}

The training looks good -- our model has ***99%*** ***Accuracy.*** Next,
we will download the generated TinyML model C library to use on our
RSL10 board IDE.![](./images/media/image7.png){width="6.5in"
height="5.986111111111111in"}

Here's the confusion matrix:
![](./images/media/image21.png){width="6.5in"
height="3.8472222222222223in"}

Click on the "Download"
button.![](./images/media/image13.png){width="6.5in"
height="0.5694444444444444in"}

### **Step 3: Model deployment and Inference**

We will place all our header files in the include folder and C files in
the src folder for the downloaded Neuton TinyML C library, see below.

![image.png](./images/media/image9.jpg){width="6.5in"
height="3.486111111111111in"}

The important function here is *neuton_model_set_inputs(inputs)*, in
which all sensor values are fed. Once the buffer is full of the
function, it returns 0 and is ready for
inference.![](./images/media/image16.png){width="6.5in"
height="3.486111111111111in"}

Build your project: the build writes .elf binary file, which is to be
flashed on the RSL10 device through J-Link Debugger.

![Screenshot (4).png](./images/media/image20.jpg){width="6.5in"
height="2.5416666666666665in"}

Set the build configurations for the RSL10 device, and proceed to the
"Run" button to flash the RSL10 board.

![image.png](./images/media/image6.jpg){width="6.5in"
height="3.4722222222222223in"}

The console should log the following output:

SEGGER J-Link GDB Server V7.58b Command Line Version

JLinkARM.dll V7.58b (DLL compiled Nov 16 2021 15:00:10)

Command line: -if swd -device RSL10 -endian little -speed 1000 -port
2331 -swoport 2332 -telnetport 2333 -vd -ir -localhostonly 1 -singlerun
-strict -timeout 0 -nogui

\-\-\-\--GDB Server start settings\-\-\-\--

GDBInit file: none

GDB Server Listening port: 2331

SWO raw output listening port: 2332

Terminal I/O port: 2333

Accept remote connection: localhost only

Generate logfile: off

Verify download: on

Init regs on start: on

Silent mode: off

Single run mode: on

Target connection timeout: 0 ms

\-\-\-\-\--J-Link related settings\-\-\-\-\--

J-Link Host interface: USB

J-Link script: none

J-Link settings file: none

\-\-\-\-\--Target related settings\-\-\-\-\--

Target device: RSL10

Target interface: SWD

Target interface speed: 1000kHz

Target endian: little

Connecting to J-Link\...

J-Link is connected.

Firmware: J-Link Lite-Cortex-M V9 compiled Feb 2 2021 16:33:27

Hardware: V9.00

S/N: 519003973

Feature(s): GDB

Checking target voltage\...

Target voltage: 2.58 V

Listening on TCP/IP port 2331

Connecting to target\...

Connected to target

Waiting for GDB connection\...Connected to 127.0.0.1

Reading all registers

Read 4 bytes @ address 0x00000000 (Data = 0x20002000)

Read 2 bytes @ address 0x00000000 (Data = 0x2000)

Received monitor command: speed 1000

Target interface speed set to 1000 kHz

Received monitor command: clrbp

Received monitor command: reset

Resetting target

Received monitor command: halt

Halting target CPU\...

\...Target halted (PC = 0x00100158)

Received monitor command: regs

R0 = 00100159, R1 = 00000007, R2 = 20008000, R3 = E000ED00

R4 = 00100000, R5 = 00000007, R6 = FFFFFFFF, R7 = 40000E2C

R8 = 4200A700, R9 = 00081A00, R10= BD648BE7, R11= 99F19BFF

R12= 00000001, R13= 20007FFC, MSP= 20007FFC, PSP= 37EBBDB8

R14(LR) = 000002E5, R15(PC) = 00100158

XPSR 61000000, APSR 60000000, EPSR 01000000, IPSR 00000000

CFBP 00000001, CONTROL 00, FAULTMASK 00, BASEPRI 00, PRIMASK 01

Security extension regs:

MSP_S = 00000000, MSPLIM_S = 00000000

PSP_S = 00000000, PSPLIM_S = 00000000

MSP_NS = 20007FFC, MSPLIM_NS = 00000000

PSP_NS = 37EBBDB8, PSPLIM_NS = 00000000

CONTROL_S 00, FAULTMASK_S 00, BASEPRI_S 00, PRIMASK_S 00

CONTROL_NS 00, FAULTMASK_NS 00, BASEPRI_NS 00, PRIMASK_NS 01

Reading all registers

Received monitor command: speed auto

Select auto target interface speed (2000 kHz)

Received monitor command: flash breakpoints 1

Flash breakpoints enabled

Received monitor command: semihosting enable

Semi-hosting enabled (Handle on BKPT)

Received monitor command: semihosting IOClient 1

Semihosting I/O set to TELNET Client

Received monitor command: SWO DisableTarget 0xFFFFFFFF

SWO disabled successfully.

Received monitor command: SWO EnableTarget 0 0 0x1 0

SWO enabled successfully.

Downloading 16112 bytes @ address 0x00100000 - Verified OK

Downloading 16048 bytes @ address 0x00103EF0 - Verified OK

Downloading 16032 bytes @ address 0x00107DA0 - Verified OK

Downloading 16016 bytes @ address 0x0010BC40 - Verified OK

Downloading 16016 bytes @ address 0x0010FAD0 - Verified OK

Downloading 14888 bytes @ address 0x00113960 - Verified OK

Downloading 8 bytes @ address 0x00117388 - Verified OK

Downloading 548 bytes @ address 0x00117390 - Verified OK

Received monitor command: clrbp

Received monitor command: reset

Comparing flash \[\...\...\...\...\...\.....\] Done.

Erasing flash \[\...\...\...\...\...\.....\] Done.

Programming flash \[\...\...\...\...\...\.....\] Done.

Resetting target

Received monitor command: halt

Halting target CPU\...

\...Target halted (PC = 0x00100158)

Received monitor command: regs

R0 = 00100159, R1 = 00000007, R2 = 20008000, R3 = E000ED00

R4 = 00100000, R5 = 00000007, R6 = FFFFFFFF, R7 = 40000E2C

R8 = 4200A700, R9 = 00081A00, R10= BD648BE7, R11= 99F19BFF

R12= 00000001, R13= 20007FFC, MSP= 20007FFC, PSP= 37EBBDB8

R14(LR) = 000002E5, R15(PC) = 00100158

XPSR 61000000, APSR 60000000, EPSR 01000000, IPSR 00000000

CFBP 00000001, CONTROL 00, FAULTMASK 00, BASEPRI 00, PRIMASK 01

Security extension regs:

MSP_S = 00000000, MSPLIM_S = 00000000

PSP_S = 00000000, PSPLIM_S = 00000000

MSP_NS = 20007FFC, MSPLIM_NS = 00000000

PSP_NS = 37EBBDB8, PSPLIM_NS = 00000000

CONTROL_S 00, FAULTMASK_S 00, BASEPRI_S 00, PRIMASK_S 00

CONTROL_NS 00, FAULTMASK_NS 00, BASEPRI_NS 00, PRIMASK_NS 01

Reading all registers

> Starting target CPU\...

To see the output, we can either use the J-Link RTT Viewer or Eclipse
IDE terminal viewer. Let\'s use Terminal in Eclipse OnSemi IDE.

![image.png](./images/media/image14.jpg){width="6.5in" height="3.5in"}

We can see the inference output on the terminal:

![](./images/media/image17.png){width="6.5in"
height="3.486111111111111in"}

Have a look at the total footprint on the
device:![](./images/media/image5.png){width="6.5in"
height="3.6527777777777777in"}

*The Neuton TinyML model and RSL10 device have proved to be working
mission-critical solutions for the compressor pumps industry. With such
accurate and reliable* *TinyML models, there is still ample space left
for all other networking and DSP operations. The inference is faster
than any* *existing tinyML solutions.*

**Note about TensorFlow Lite for MCU**

Meanwhile, I created a model using the TensorFlow Lite solution for the
Microcontrollers framework. I spent some hours on manual searching for
optimal architecture, and I got Accuracy=0.935300 and Model
Size=12.94kB. Unfortunately, I found that RSL10 SDK does not support
C++, hence we cannot run TensorFlow Lite models on this device.

### **Conclusion**

Through this project, I showcased how such tiny sensor-rich low-powered
devices can improve lives for the better. Predictive maintenance of
compressor water pumps can really save much money for the common man,
farmers, and even companies.

I have been collecting my household water pump sensor data daily and
will explain the possibility of using regression models for predictive
maintenance in my next project. Stay tuned!

Source code:
[[https://github.com/vilaksh01/RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition-]{.underline}](https://github.com/vilaksh01/RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition-)
