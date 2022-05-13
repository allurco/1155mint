//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Fake1155 is ERC1155 {
    
    uint256 public constant PLANET = 0;
    uint256 public constant PLANET_VERSE = 1;

    constructor() ERC1155("https://game.example/api/item/{id}.json") {
        _mint(msg.sender, PLANET, 1, "");
        _mint(msg.sender, PLANET_VERSE, 100, "");
    }

    function mintmore(uint256 _amount, uint256 _id) external {
        _mint(msg.sender, _id, _amount, "");
    }

}
