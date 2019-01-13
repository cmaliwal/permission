var Permissions = artifacts.require("./Permissions.sol");


module.exports = (deployer) => {
  deployer.deploy(Permissions);
};