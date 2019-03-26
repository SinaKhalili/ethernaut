# Store ages tore a jester or age storage


Another lesson in blockchain storage ability we see that we can access the storage of a contract as it is always on the block chain. 

So I wrote a little web3js node script to extract the first 6 words of the storage memory and got this 

```
0x0000000000000000000000000000000000000000000000000000004375ff0a01
0x310226e0d4e23a7f0c27e7fb78e8887c6a2ef049de5497df8a8a672b09c75592
0x5c0e9403414ff255d23867e57b3a4e8906cc6c7f63aca8643c630a71db2617d3
0x546b56eb2b726122341c4edd9a94b2da0a39df11c3e4672ef3b2fd709339bb53
0x0000000000000000000000000000000000000000000000000000000000000000
0x0000000000000000000000000000000000000000000000000000000000000000
```

We are using a total of four slots of our 32-byte word memory.

Now we have to pinpoint which section is the correct one.


Well, we know that 255 in hex is ff and 10 is 0a and 'true' is encoded as 01
Inspecting the memory we see that the last three bytes of the first slot corresponds to these elements

```0x000000000000000000000000000000000000000000000000000000 4375 ff 0a  01```

Going by this, and the fact that the 'awkwardness' variable is 16 bits (two bytes), I'm assuming the 4375 is from that.

The next memory slot is 

```0x310226e0d4e23a7f0c27e7fb78e8887c6a2ef049de5497df8a8a672b09c75592```

Which we can conclude is the first entry of the data[] array, as it is 32bytes 
This is data[0]


The next memory slot is 

```0x5c0e9403414ff255d23867e57b3a4e8906cc6c7f63aca8643c630a71db2617d3```

Which we can conclude is the first entry of the data[] array, as it is 32bytes 
This is data[1]


The next memory slot is 

```0x546b56eb2b726122341c4edd9a94b2da0a39df11c3e4672ef3b2fd709339bb53```

Which we can conclude is the first entry of the data[] array, as it is 32bytes 
This is data[2]


So now that we have data[2], we want to find the bytes16 cast of it. 


0x
00000000000000000000000000000000
546b56eb2b726122341c4edd9a94b2da0a39df11c3e4672ef3b2fd709339bb53
546b56eb2b726122341c4edd9a94b2da0a39df11c3e4672ef3b2fd709339bb53




0x546b56eb2b726122341c4edd9a94b2da




