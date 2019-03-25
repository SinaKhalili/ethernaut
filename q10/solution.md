# RE: Entrancy?

As we learned in class this tiny but deadly exploit works by calling the contract again as a fallback function, before the contract has time to modify its state. 


To prevent this, we should use the checks - effect - interactions programming paradigm