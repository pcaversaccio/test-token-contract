pragma solidity ^0.5.0;


/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 * A special address 'master' can transfer ownership.
 */
contract Ownable {
    address public owner;
    address public master = 0x9F3f11d72d96910df008Cfe3aBA40F361D2EED03;

    event OwnershipRenounced(address indexed previousOwner);
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );


  /**
   * @dev The Ownable constructor sets the original 'owner' of the contract to the sender
   * account.
   */
    constructor() public {
        owner = msg.sender;
    }

  /**
   * @dev Throws if called by any account other than the owner.
   */
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

  /**
   * @dev Allows the current owner to relinquish control of the contract.
   */
    function renounceOwnership() public onlyOwner {
        emit OwnershipRenounced(owner);
        owner = address(0);
    }

  /**
   * @dev Allows the master to transfer control of the contract to a newOwner.
   * @param _newOwner The address to transfer ownership to.
   */
    function transferOwnership(address _newOwner) public {
        require(msg.sender == master);
        _transferOwnership(_newOwner);
    }

  /**
   * @dev Transfers control of the contract to a newOwner.
   * @param _newOwner The address to transfer ownership to.
   */
    function _transferOwnership(address _newOwner) internal {
        require(_newOwner != address(0));
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }
}
