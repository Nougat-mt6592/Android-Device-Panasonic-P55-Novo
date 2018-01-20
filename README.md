<br></br>

Micromax Unite 2 A106

Panasonic P55 Novo device (codenamed as "P55Novo") is low-range smartphone from Panasonic.
Basic 	Spec Sheet
CPU 	Octa-core 1.4 GHz Cortex-A7
GPU 	Mali-400MP2
Memory 	1GB RAM
Shipped Android Version 	4.4.2
Storage 	8 GB
Battery 	2500 mAh
Display 	5.3" 720 x 1280 px
Camera 	Raer - 13MPx, LED Flash, Back - 5MPx, LED Flash

This branch is for building LineageOS 14.1 ROMs.
What's working

    FM Radio
    Calls
    USSD code
    WiFi
    Bluetooth
    Video recording
    Camera
    SMS (sending & recieving)
    All sensors
    Offline charging
    2G/3G switch
    Data connection
    VPN

Build Commands :-

    repo init -u git://github.com/LineageOS/android.git -b cm-14.1
    repo sync
    git clone https://github.com/Nougat-mt6592/Android-Device-Panasonic-P55-Novo.git -b los14 device/Panasonic/P55Novo
    git clone https://github.com/Nougat-mt6592/Android-Vendor-Panasonic-P55-Novo.git -b master vendor/Panasonic/P55Novo
    Then apply pacthes manually from github.com/TESTmt6572 by using cherry-pick
    source build/envsetup.sh
    brunch P55Novo
    Done :)

Credits/Thanks to:-

    GOD For Everything and Anything
    Fire855 - withou him, we are nothing
    Tribetmen - N Patches For MT6572 (He is the man Behind LOS14.1 to boot On 3.4.67 Kernel)
    adi766 - brought up N on MT6572
    gmcadiom - booted first N on Mt6582
    DarkKnight6499 - for base device tree and vendor tree
    kishpatel1998 - for making a new working device tree for MT6582
    manjotsidhu & badboyarbaz - for making developement ongoing adn fixing RIL
    EndLess728 - for everything
    Yashpal Joshi (ME) - For making N tress for mt6592
    Ur name will be listed here :) :) :) :)
    Electricity Department - for a frequent power cut
    Everybody's Internet Provider - for a good very low speed
    rcrajarshi12 - for damadging the good working device tree
    Anand.Umap - for his awesome Mic Fix
    Google - For everthing (you must apprecieate) and The Awesome Free VPS

