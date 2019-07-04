var TestTokenContract = artifacts.require("TestTokenContract");
module.exports = function(deployer) {
    deployer.deploy(TestTokenContract, "This is a test token equity contract.");
    // Additional contracts can be deployed here
};