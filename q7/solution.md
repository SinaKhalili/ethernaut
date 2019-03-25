# 0xSUICIDE

In this challenge we try to send ether to a contract that doesn't have any methods or functions :thinking: however looking around online we find that all contracts actually have method called "selfdestruct(address _a)" that takes in an address as a parameter and sends all its own ether there before finally selfdestructing.


Since all contracts have their own address also, we can simply send our remaining contract balance there. 



Also incredibly there's not really a way to prevent this (except catching it in the callback or something)


PS that opcode for selfdestructing is SUICIDE. thats metal.