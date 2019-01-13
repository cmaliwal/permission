var Permissions = artifacts.require("./Permissions.sol");

contract('Permissions', function(accounts) {
	var contractInstance;

  it('Grant the permissions to user', function() {
    return Permissions.deployed().then(function(instance) {
      contractInstance = instance;
      return contractInstance.givePermissionTo(accounts[1], { from: accounts[0] });
    }).then(function(receipt) {
      assert.equal(receipt.logs.length, 1, 'triggers one event');
      assert.equal(receipt.logs[0].event, 'PermissionGrant', 'should be the "PermissionGrant" event');
      assert.equal(receipt.logs[0].args._from, accounts[0], 'logs the account the tokens are transferred from');
      assert.equal(receipt.logs[0].args._to, accounts[1], 'logs the account the tokens are transferred to');
      return contractInstance.getPermission();
    }).then(function(address) {
      assert.equal(address, accounts[1], 'get permissions');
    });
  });

})