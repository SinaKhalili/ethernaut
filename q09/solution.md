# What's a king to god?

In this problem we are tasked with making the transfer function of the king contract fail. Because if the transfer fails, then the contract fails.


To do this we create a contract that has no payable fallback function and use that as the account that claims kingship. When it does, the king contract doesn't know that it's not a regular account. When the kingship is to be reclaimed however, the transfer will fail and the fallback function will revert!


Also major :key: key was to make sure to send enough gas to this contract to execute all the code.

:crown:
