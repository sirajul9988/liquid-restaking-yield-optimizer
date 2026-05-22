// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract LRTStrategyManager is Ownable {
    struct Strategy {
        address lrtToken;
        uint256 weight; // Basis points
        bool active;
    }

    mapping(uint256 => Strategy) public strategies;
    uint256 public strategyCount;

    event AllocationUpdated(uint256 indexed id, uint256 newWeight);

    constructor() Ownable(msg.sender) {}

    /**
     * @dev Rotates capital into a specific Liquid Restaking Protocol.
     */
    function rotateCapital(address _lst, uint256 _amount, address _lrtVault) external onlyOwner {
        IERC20(_lst).approve(_lrtVault, _amount);
        // Logic to deposit LST and receive LRT
    }

    function setWeight(uint256 _id, uint256 _weight) external onlyOwner {
        require(_weight <= 10000, "Invalid weight");
        strategies[_id].weight = _weight;
        emit AllocationUpdated(_id, _weight);
    }
}
