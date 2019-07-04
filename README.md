# Equity Test Token Contract
This is a test equity token contract to be deployed on the Rinkeby testnet.
## Get Started
### Setup Truffle Project
```
truffle init
```
### Compiling the Truffle Project
```
truffle compile
```
### Migrate the Truffle Project to Ganache
Make the following adjustment in the `truffle-config.json` file:
```
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 7545,            // Standard Ethereum port (default: none)
      network_id: "5777",       // Any network (default: none)
      },
```
Write the deployment script in the folder `migrations`. The migration file name should start with a number. I use to call it `2_deploy_contracts.js`.

Now start your local Ganache environment and run `truffle migrate`. Congratulations you have deployed your test equity token contract to your personal Ethereum blockchain.