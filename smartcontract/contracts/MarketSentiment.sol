
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract marketsentiment{
    address public owner; 
    string[] public tickersArray;

    constructor(){
        owner = msg.sender;
    }

    struct ticker {
        bool exists;
        uint256 up;
        uint256 down;
        mapping(address => bool) Voters;
    }

    // for Moralis to listen to any events happening on the smartcontract, we need this event tickerupdated
    event tickerupdated (
        uint256 up,
        uint256 down,
        address voter,
        string ticker
    );

    mapping(string => ticker) private Tickers;

    function addTicker(string memory _ticker) public{
        require(msg.sender == owner, 'Only the owner can create tickers!');
        ticker storage newTicker = Tickers[_ticker];
        newTicker.exists = true;
        tickersArray.push(_ticker);
    }
}