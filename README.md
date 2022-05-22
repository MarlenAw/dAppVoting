in SmartContract: to populate the smartcontract with everything you need, do the next steps: 
- npm i -D hardhat
- npx hardhat

then install the next dev dependencies:
- npm i -D dotenv
- npm i -D @nomiclabs/hardhat-etherscan



--> In branch compileAndDeploy, move to smartContract dir and run these commands:

- npx hardhat clean
- npx hardhat compile


--> Deploy smart contract on polygon mumbai testnet:
--> Get MATIC tokes for MUMBAI TESTNET from https://faucet.polygon.technology/

- npx hardhat run scripts/deployMarketSentiment.js --network mumbai

--> verify our smart contract 

- npx hardhat verify 0xa2D5F42dD3b1e01eE4b0631aCe0B4d96D6D2E0eb --network mumbai