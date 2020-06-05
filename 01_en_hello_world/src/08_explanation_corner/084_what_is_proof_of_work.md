# What Is Proof of Work?

TEXT THORALF MÜLLER

be proven consists in a math problem that has to be solved by a computer. With most blockchains, this work is done by so-called miners. IOTA uses proof of work as a protection against spam. Of course we want to avoid spam, which everybody knows from emailing, in a decentralized system as well. To prevent the network from becoming flooded with spam, we use PoW. Whoever wants to feed a transaction into the system must expend some computing power. This essentially makes spamming unprofitable, because a lot of spam causes a lot of energy costs.
IOTA‘s PoW serves exclusively as a spam protection and is not needed for consensus. For this PoW, being difficult to produce but easy to validate is key. For every transaction, the PoW needs to be carried out, so that the transaction is accepted by the nodes.
The nonce (the last 27 trytes of a transaction) is changed, and then the transaction is hashed with the changed nonce. If the transaction hash, converted into trits, eventually has as many zeroes as necessary for the respective network, the transaction is valid. If not, the process is repeated until there are enough zeroes.
The number of minimally required zeroes is given in MWM (minimum weight magnitude). For the mainnet, the MWM value is 14, while for the devnet it is 9. The higher this number, the more intricate it gets. 3 trits with the value 0 are represented as 9 in the tryte alphabet. There are therefore always several nines at the end of valid hashs in trytes.

Hash example
The last 9 trytes of the hash are converted into trits, with 14 zeroes at the end:

```
TRSJAIDFMDPA9DRRVMTQPSIKIWHJMEEUXTASVRKWGJCFASU99UFBVKFBJZSNQXMDXTL9YS9EvFBRMA9999
```

0, -1, 1, -1, 1, 0, 0, 0, -1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0


The PoW can either be executed locally on the device itself or remotely on a different device. The advantage of a local PoW is that you are not dependent on anybody. However, if you do not have a powerful device, the PoW may take a lot of time, which in turn may lead to a lower probability for the transaction to be validated. In Trinity, you can adjust this yourself in the settings (remote PoW only works with nodes that support this option).
If you would like to use remote PoW, you can either use public nodes or a service like https://powsrv.io/ oder https://tanglebay.org/. These work with FPGAs and can therefore carry out PoW very
fast and efficiently.

https://powsrv.io/ is particularly fast in carrying out PoW (approx.
50 ms/transaction), however, it is a fee-based service. You can buy PoW for a certain number of transactions there and then use it as you like. For example, you can spread your allotment over several months or use it all at once. Currently, the service can validate approximately 90 transactions per second.
If you would like to carry out a PoW locally and very quickly, you can install a proxy server for this purpose. The proxy only carries out the PoW and passes all other requests on to an IRI node. You can find instructions on this procedure here: https://docs.iota.org/docs/ node-software/0.1/iri/how-to-guides/install-a-pow-proxy.
In your browser, you have the option to carry out PoW with WebGL2 (GPU), however, this option is not supported by all browsers. To do this, you can import curl.lib.js and iota.js into your browser and then override attachToTangle (the PoW function):
Try it yourself at https://thoralf-m.github.io/Devbox/ by simply sending a transaction with a message. Click on “localPoW“, then on “message tx“, and then on the “Run“ button. In the GPU utilization you can see that it is actually calculated locally.

```
var iota = core.composeAPI({
        provider: `https://nodes.thetangle.org:443`,
        attachToTangle: curl.localPoW 
    })
```

There are also ideas around to replace PoW with a different spam
protection in the future. For example, we could limit transactions per second to the physical position, which would be especially interesting for the IoT.