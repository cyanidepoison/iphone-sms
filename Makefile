
SDKVER=3.0
SDK=/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS$(SDKVER).sdk

CC=/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/arm-apple-darwin9-gcc-4.2.1
CPP=/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/arm-apple-darwin9-g++-4.2.1
LD=$(CC)

//LDFLAGS += -framework CoreFoundation 
LDFLAGS += -framework Foundation 
//LDFLAGS += -framework UIKit 
//LDFLAGS += -framework CoreGraphics
//LDFLAGS += -framework AddressBookUI
//LDFLAGS += -framework AddressBook
//LDFLAGS += -framework QuartzCore
//LDFLAGS += -framework GraphicsServices
//LDFLAGS += -framework CoreSurface
//LDFLAGS += -framework CoreAudio
//LDFLAGS += -framework Celestial
//LDFLAGS += -framework AudioToolbox
//LDFLAGS += -framework WebCore
//LDFLAGS += -framework WebKit
//LDFLAGS += -framework SystemConfiguration
//LDFLAGS += -framework CFNetwork
//LDFLAGS += -framework MediaPlayer
//LDFLAGS += -framework OpenGLES
//LDFLAGS += -framework OpenAL
LDFLAGS += -framework CoreTelephony

LDFLAGS += -lobjc
LDFLAGS += -L"$(SDK)/usr/lib"
LDFLAGS += -F"$(SDK)/System/Library/Frameworks"
LDFLAGS += -F"$(SDK)/System/Library/PrivateFrameworks"

CFLAGS += -I"/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/gcc/arm-apple-darwin9/4.2.1/include/"
CFLAGS += -I"$(SDK)/usr/include"
CFLAGS += -I"/Developer/Platforms/iPhoneOS.platform/Developer/usr/include/"
CFLAGS += -I"/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator$(SDKVER).sdk/usr/include"
CFLAGS += -DDEBUG -std=c99
CFLAGS += -F"$(SDK)/System/Library/Frameworks"
CFLAGS += -F"$(SDK)/System/Library/PrivateFrameworks"

CPPFLAGS=$CFLAGS

iphone: 
	$(CC) -o sms main.m $(CFLAGS) $(LDFLAGS)
