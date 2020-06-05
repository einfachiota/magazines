# Hardware Wallet with ESP32

<div class="introdution">
Build your own hardware wallet to send IOTA transactions!
</div>

TEXT SEBASTIAN HEUSSER


The ESP32, in contrast to the Raspberry Pi, is only a microcontroller. It is roughly comparable with an Arduino, just that the ESP32 has much more power and functionalities. For example, it has an integrated WLAN and Bluetooth chip and can thus easily communicate with the home network. Similarly to the Raspberry Pi, you can connect sensors, switches and other parts to the GPIO pins. The ESP32 costs around 10 euros and is available with different components, for example with a camera or a small display. But attention: the ESP32 with cam does not have a USB port. You need an appropriate USB module to be able to write on it.

Now that the CClient v1.0.0-beta has been published, it is possible to implement a hardware wallet on the ESP32. We are using the version by Tim Rappe here, which builds on the IOTA Foundation‘s code but makes the initial installation even easier for us. Have fun tinkering!

## Your Machine Wallet
It‘s basically as simple as this:
    1. Install all necessary software
    2. Download the Machine Wallet software
    3. Upload the software to the ESP (flash)
    4. Enter your seed and send transactions
Of course, this is only theory. In real life, things do not always work out that easily. If you experience errors and get stuck, you can register yourself in our Discord and ask for help in the #hardware channel!

## Step-by-Step Tutorial
Follow the step-by-step tutorial on einfachIOTA.de (in German, Englisch version to be published soon) and make your own hardware wallet ready to use in no time. We advise you to use the devnet for this, since the library is still at a very early stage of development.

Step-by-Step Tutorial (in German)
https://www.einfachiota.de/#/post/iota-machine-wallet-auf-einem-esp32

ESP Integration
https://github.com/magnisinfo/IOTA_ESP32_integration

CCLibrary
https://github.com/iotaledger/entangled/tree/develop/cclient