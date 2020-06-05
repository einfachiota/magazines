# Developing IOTA Apps in Under 5 Minutes

<div class="introdution">
The IOTA Payment Module brings along an IOTA wallet for your Javascript application.
</div>

TEXT SEBASTIAN HEUSSER

You have an idea, or even an application already, and you would like to incorporate the possibility to process IOTA payments? No problem! The IOTA Payment Module brings along an IOTA wallet for Javascript apps and takes care of everything IOTA-relevant for you. The module comes with its own webserver, communicates with your browser or with other applications via HTTP and websockets, and offers many settings options.

Due to its easy installation and integration, the entire module is ready to use in just a few minutes. You just need to define in your own code what should happen. Developers can thus define exactly what should happen if an IOTA transcation has been received and confirmed. With the websocket server, you can give the user important feedback, for example “Your transaction has been received” or “Your payment has been confirmed.”

The difference between the IOTA Hub and the Payment Module is a very simple one. The IOTA Hub was developed for applications like crypto exchanges, that is, applications with several users who have a wallet. With the Payment Module, in contrast, there is only one wallet, which can also be used and configured with the provided frontend.

The Payment Module still is at a very early stage of development, but nevertheless, it has been successfully integrated by several developers already. For example, the payment function of the einfachIOTA Magazine online shop has been realized with the Payment Module. The pay button was outsourced as an extra frontend module in the form of an additional package, so frontend developers can extend their application with an IOTA pay button by means of one line of code. You can find an article on Hackster. io which describes how to implement the Payment Module on a Raspberry Pi and display the addresses as QR codes on an e-ink display.

The project – just as IOTA itself – is still in the development phase. It is quite normal to have daily updates. If you notice any errors or possibilities for improvement, you are welcome to create an issue on GitHub. We are constantly looking out for support to make the Payment Module ever more secure and ever faster.

Payment Module
https://github.com/iota-pay/iota-payment-module

VueJS Pay Button
https://github.com/iota-pay/vue-iota-payment

Raspberry Pi Tutorial on Hackster�io
https://www.hackster.io/huhn/raspberry-pi-as-iota-payment-provider-8f1e0f