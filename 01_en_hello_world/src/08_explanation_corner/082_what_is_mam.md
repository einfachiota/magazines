# What Is MAM?

<div class="introdution">
MAM, masked authenticated messaging, is encrypted messaging in the Tangle, the source of which can be verified.
</div>

TEXT SEBASTIAN HEUSSER

IOTA was created for the Internet of Things and machine-to-machine communication. With masked authenticated messaging, sensors and other devices can encrypt entire data streams and save them in the IOTA Tangle in a quantum-safe way. Only authorized persons can read the entire data stream or add new data. Basically, MAM works like a radio, where only those who know the right frequency can listen to a certain station. Channels may be public or encrypted, and only the station can feed new data into the channel. There are three options from which the station can choose if they want to publish a new message on their channel.
Public: Anybody can read the content of the message. Private: Only the station (i.e. the seed owner) can read the message. Restricted: There is the possibility to specify a key, which can be shared. If you have this key, you can read the content of a message, but you can only add new messages to the channel if you have the seed phrase. This key is called sideKey in the source code. Libraries for MAM are available for Javasript and C. It is advisable to closely observe the instructions in the code repository, because this project still is at a very early stage of development. A good option for for staying tuned on information, discussions and questions is to join the #mam-dev and #mam-discussion channels on the IOTA Discord.