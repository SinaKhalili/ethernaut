# More like Dele7gate amirite

This challenge used the delegate call to call a function on another contract. 
This other contract used the 'msg.sender' global variable which would ordinarily be set to the __calling__ contract's address, but since its a *delegate* call we use the original contract's variables (making ourselves the senders).


Another thing to note is that we have to call the correct function on the other contract, and so must encode the abi of the function we wish to call in our call :+1: 


All this was accomplished by this snazzy one-liner! 

```javascript
contract.sendTransaction({from:player.toString(), 
                            to:contract.address.toString(), 
                          data:web3.sha3("pwn()").slice(0,10)
                         });
```



