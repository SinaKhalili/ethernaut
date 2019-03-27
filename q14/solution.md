# XORry to bother you

For this problem there are three mini-challenges to solve

First, 
We have to make sure the request comes from a contract (tx.origin vs msg.sender) 

Next we have to make sure that the code call is in the constructor because we want it to have ```extcodesize``` of 0


Lastly we make sure to xor the bits of the address and an all 1 bitmask using ``` bytes8(uint64(keccak256(address(this))) ^ (uint64(0) - 1)); ``` 

To pass the last gate. 

