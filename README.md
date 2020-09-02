# Arduino-ESP
Arduino &amp; ESP code 

Code I had played with, tools I had develop to thinker with Arduino and ESP various flavours:

## Tools
- ReadCOMPort : Shell script that reads from COM ports, very useful when debuging Arduino or ESP.
```ps
PS> read-com COM11 
```
![read-com](https://github.com/Surrealcrow/Arduino-ESP/readcom.png)


## ESP01 Arduino Code
- GatoIOTV2 (Sinric + WiFi Manager + OTA) : All integrated in one script, easy to adapt, you need a Sinric account linked to an Alexa service, Wifi Manager allows you to change Wifi credentians in case that the ESP can't connect, and finally, Over the Air updates (when using the same network).
