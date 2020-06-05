# What Is the Ternary System?

TEXT SCHMUCKLOS

## What is the ternary sytem, and does it come with any advantage?
The ternary logic applied to IOTA is found throughout the whole project. Ternary logic is behind the JINN microcontroller, the Troika hash function, the seed, which only contains the capital letters A-Z along with the number 9, and also behind the fact that there are exactly 2,779,530,283,277,761 IOTA tokens.

## The basics
Before explaining why IOTA builds on ternary logic, we need to have a closer look at the two basic systems that are relevant for this article.
The binary system: one bit (binary digit) can assume exactly two (21 = 2) states: 0 and 1. Eight bits make one byte (28 = 256) and can thus represent 256 combinations.
The ternary system: one trit (trinary digit) can assume exactly three (31 = 3) states: -1, 0 and 1. Three trits make one tryte (33 = 27) and can thus represent 27 combinations.

The opposite of every balanced ternary number is identified by swapping every -1 with a 1 and vice versa. Negative numbers can thus be depicted just as easily as positive numbers, since – as opposed to the decimal system – there is no need to note down a negative sign. This makes certain calculations more efficient in the ternary system compared to the binary system. As trytes are even more complex than bytes, it is important to make them more readable. They are therefore converted into a sort of different language. The IOTA development team has created the tryte alphabet for this purpose. It consists of the number 9 and the capital letters A-Z. This means that it contains 27 digits, just as many as there are combinations in a tryte. So, every combination of a tryte can be depicted by one digit. IOTA uses this alphabet for the seed, addresses, hashs etc. The seed itself consists of 81 digits, that is, 81 trytes.

An example
```
  CIIXLALQIZSAYXTYLOGYHMY9MSCDGCRXQFOHTZRXFRSFBQJJFFXRMVOJQWZJAILCKFSYEFWNLFWIHISEF
```

Every tryte has 27 combinations. So the IOTA seed has 2781 combinations. Expressed differently, these are ~8.71 * 10115 combinations, which is by far more than there are atoms in the entire visible universe. Chances to guess a seed are virtually zero percent. For comparison: Bitcoin‘s private keys are virtually impossible to guess, too, and they have only 2256 = ~1.1577 combinations. In the case of quantum computers and back calculation from addresses to seeds, or private keys respectively, IOTA is ahead of Bitcoin due to its considerably higher number of possibilities.

## Why are there exactly 2,779,530,283,277,761 IOTA tokens?
This number also has to do with the trytes. Trytes balance themselves around the value 0, from -13 to +13. This is why we also speak of a balanced ternary system. We have 27 combinations and the maximum value 13. We can also calculate this mathematically:
(33 - 1) / 2 = 13 combinations with a positive value
33 trits make the maximum supply: (333 - 1) / 2 = 2,779,530,283,277,761 IOTA
Note: It was important to create a high number of tokens, because they are intended to be used for micropayments between machines, for which high token prices are a hindrance. If in the distant future it should become necessary to raise the maximum number of tokens, due to very high demand, this would be possible.

## Why do exactly 33 trits define the maximum supply?
The value field of a transaction is 81 trits long, 33 of which are currently in use. This makes exactly (333 - 1) / 2 or 2,779,530,283,277,761 IOTA, a number which can still be depicted with a 64-bit integer (data type for whole numbers).
As 81 trits have been reserved for the value field, the maximum supply can be raised to (381 - 1) / 2 if necessary. In this case, every current owner would still own the same part of the total value, but the amounts could now be subdivided into smaller units.
Example: If you had 1 MIOTA (1 megan IOTA = 1 million IOTA) in your wallet before the increase, you will have 1 GI (1 gigan IOTA = 1 billion IOTA) afterwards. This does not change anything about the total value; there will just be smaller units available than before.

## Why do current computers use the binary system?
In the beginnings of computer technology, mechanical calculators were superseded by electrical calculators. These first computers worked with relays, which can assume only the two states on and off. However, since relays with their high percentage of mechanical parts are very interference-prone, they were replaced with transistors. These can also assume only the two states on and off (voltage on, voltage off). As transistors make do without mechanical parts, they can have very small dimensions.
Today‘s computers consist of many connections and components that are used to transmit and store data and to communicate with other components. The biggest part of storing, transmitting and communicating is executed by digital electronics these days. These still use the binary system with the two clearly separated states, on = 1 and off = 0.

Binary systems are still employed, because they are very fast when it comes to changing switch status. Transistors are very fast and effective switches. Combining a range of transistors and their states, different signs can be depicted and mathematic calculations can be carried out quickly. The disadvantage here is the following. To enhance the speed of a chip based on electrical transistors, more transistors need to be incorporated in the chip. This means that either the chip needs to be bigger or the individual transistors need to be smaller. The current trend is towards smaller transistors. However, the downside of this is that more heat develops and the chip becomes more prone to errors.

## The advantages of a ternary system
Employing a system with three states would have the advantage that we could build on other basic elements than transistors to make more efficient IC‘s (integrated circuits). A ternary system is more efficient, because it provides the highest densitiy of data representation among integral bases (2,4...). In a ternary system, we can thus accomodate bigger numbers in less memory. For example, the decimal number 6 is represented by 110 in the binary system (needing 3 bits), while it is represented by 20 in the ternary system (one digit less). The efficiency of a base 3 number system is higher than that of a base 2 number system (by factor 1.58, approximately). We could thus save memory space, and calculations could be carried out faster, while the chips would have lower clock rates.

The effort necessary to build a complex logical circuit in the CPU based on a ternary system can be reduced to roughly 36% compared to an equivalent binary system. Besides resulting in a more space-saving design of the microcontroller, this would also lead to energy savings. Ternary components have not yet been used in the IT sector, because realisation of the hardware is much more complex. Moreover we are still lacking the broad support of the mass market. Once the realisation of the necessary hardware has been accomplished, the new microcontrollers will be significantly more energy-efficient and powerful than their binary equivalents.

With the advent of mass-produced binary components for computers, ternary computers (which already existed at the time) were unfortunately degraded to a small footnote in computer history, although the balanced ternary system allows for a more efficient mathematical number representation than the binary system. In the 1970s, development of ternary computers largely came to a halt, because binary systems could be developed further more quickly and cheaply. As has often been the case in the past, what prevailed over time was not the technically superior concept but the concept that was the easiest and cheapest, in terms of hardware, to implement for the mass market. One ends up wondering at what point ternary computer technology would be today if it had been continuously developed, too.

In view of the elegance and efficiency of ternary logic, computer expert Donald E. Knuth predicts a revival of ternary computers in the future. One possible way to develop ternary computers further in the future would be to combine optical computers with the ternary system. A ternary computer with optical fibres could use dark as 0 and two orthogonal polarizations of light as 1 and -1, respectively.