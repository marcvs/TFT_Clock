HOME=/home/marcus
ARDUINO_ROOT= $(HOME)/arduino/libs/github.com/arduino/Arduino
ESP_ROOT = $(ARDUINO_ROOT)/hardware/esp8266com/esp8266
ESPTOOL = $(HOME)/.local/lib/python3.7/site-packages/esptool.py
#ARDUINO_DIR = $(HOME)/.arduino15/packages/esp8266/hardware/esp8266/2.5.0-dev

SKETCH 			= TFT_Clock.ino
BOARD			= generic

# ESP-12F:
FLASH_DEF 		= 4M3M

# ESP-01
#FLASH_DEF 		= 1M512
#FLASH_DEF 		= 1M128

GITHUB_LIBS		= /home/marcus/esp8266/arduino/libs/github.com
MARCUS_LIBS	    = /home/marcus/esp8266/arduino/libs/hardt-it.de
#UPLOAD_SPEED	= 
# ESP_LIBS seems to be ~/.arduino15/packages/esp8266/hardware/esp8266/*
#
EXCLUDE_DIRS 	= Extensions/*cpp
UPLOAD_PORT		= /dev/ttyUSB0
LIBS			= $(ESP_LIBS)/ESP8266WiFi\
				  $(ESP_LIBS)/SPI\
				  $(GITHUB_LIBS)/marcvs/TFT_eSPI
				  #$(GITHUB_LIBS)/Bodmer/TFT_eSPI

#ESP_ADDR ?= 192.168.0.169
#ESP_ADDR ?= 192.168.0.144
ESP_ADDR ?= 192.168.2.110
#ESP_ADDR ?= ESP_123456
ESP_PORT ?= 8266
#ESP_PWD ?= 123
ESP_PWD = 123


include $(GITHUB_LIBS)/plerup/makeEspArduino/makeEspArduino.mk
#include $HOME/esp8266/arduino/makeEspArduino/makeEspArduino.mk
#include $(HOME)/esp8266/arduino/makeEspArduino/makeEspArduino-marcus.mk
#include $HOME/esp8266/arduino/makeEspArduino/makeEspArduino-marcus.mk
