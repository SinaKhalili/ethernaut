# Ether is deterministic

Meaning random numbers can't be implemented without outside influence. 

Hence we can attack this. 


Seeing the contract is using the ```uint256(block.blockhash(block.number-1))``` which is a number that isn't a unique or anything so I can be predicted if it simply gets used in a function **I** write and I can get the same answer. 



Another thing I had to learn was that if I want to call a contract from within another contract I have to put its interface (or equivalent to a header file in C) in the contract (because that's how ether knows the abi I think) 



Also I tried to make the contract run 10 times but that hit the gas limit so that's also something I learned I need to be aware of.  