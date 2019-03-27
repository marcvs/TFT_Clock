HOME			= /home/marcus
ARDUINO_ROOT  	= $(HOME)/arduino/libs/github.com/arduino/Arduino
ESP_ROOT      	= $(ARDUINO_ROOT)/hardware/esp8266com/esp8266
ESPTOOL       	= $(HOME)/.local/lib/python3.7/site-packages/esptool.py

SKETCH        	= TFT_Clock.ino
BOARD         	= generic

FLASH_DEF     	= 4M3M

GITHUB_LIBS   	= /home/marcus/esp8266/arduino/libs/github.com
MARCUS_LIBS   	= /home/marcus/esp8266/arduino/libs/hardt-it.de
#UPLOAD_SPEED 	=

EXCLUDE_DIRS  	= Extensions/*cpp
UPLOAD_PORT   	= /dev/ttyUSB0
LIBS          	= $(ESP_LIBS)/ESP8266WiFi\
				  $(ESP_LIBS)/SPI\
				  $(GITHUB_LIBS)/marcvs/TFT_eSPI
				  #$(GITHUB_LIBS)/Bodmer/TFT_eSPI

include $(GITHUB_LIBS)/plerup/makeEspArduino/makeEspArduino.mk
