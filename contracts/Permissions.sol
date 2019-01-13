pragma solidity >=0.4.21 <0.6.0;


/**
 * @title Permissions
 * @dev The Permissions contract record a user's public address as having granted permission to 
 * another user’s public address
 */
contract Permissions {
    
    address owner;    // current owner of the contract

    mapping (address => address) permissions;

    event PermissionGrant(address indexed _from, address indexed _to);
    
    /**
    * @dev The Permissions constructor sets the original `owner` of the contract to the sender
    * account.
    */
    constructor () public { 
        owner = msg.sender;
    }

    /**
    * @dev Give permissions to user.
    * @param _toUser The address to give permission to.
    */
    function givePermissionTo(address _toUser) public returns(bool) {
        require(_toUser != address(0), "address not valid");
        permissions[msg.sender] = _toUser;
        emit PermissionGrant(msg.sender, _toUser);
        return true;
    }
    
    /**
    * @dev Check permissions to user.
    * @param _fromUser check that user have permissions or not.
    */
    function checkPermission(address _fromUser) public view returns(bool) {
        if (permissions[_fromUser] == msg.sender) {
            return true;
        }
        return false;
    }
    
    /**
    * @dev get permissions.
    */
    function getPermission() public view returns(address) {
        if (permissions[msg.sender] == 0){
            return address(0);
        }
        return permissions[msg.sender];
    }
}