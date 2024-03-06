pragma solidity >=0.8.2 <0.9.0;


import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract USDC is ERC20 {

    constructor() ERC20("USDC", "USDC") {}

    function mint() external{
        _mint(msg.sender, 5 * (10 ** 6));
    }

    function decimals() public view override returns (uint8) {
        return 6;
    }


}