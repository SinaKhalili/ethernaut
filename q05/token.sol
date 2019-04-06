pragma solidity ^0.4.18;

contract Token {

  mapping(address => uint) balances;
  uint public totalSupply;

  function Token(uint _initialSupply) public {
    balances[msg.sender] = totalSupply = _initialSupply;
  }

  function transfer(address _to, uint _value) public returns (bool) {

      // This is the only check to see if have transfered enough balance
    require(balances[msg.sender] - _value >= 0);

    // Takes from message.SENDER (not the origin)
    balances[msg.sender] -= _value;

    // Adds the value to the "to" account
    balances[_to] += _value;
    return true;
  }

  function balanceOf(address _owner) public view returns (uint balance) {
    return balances[_owner];
  }
}


