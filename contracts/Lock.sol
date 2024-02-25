// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Simple {

    uint256 public number;

    function setNumber(uint256 _number) public {
        require(_number > 0, "Number must be positive");
        number = _number;
    }

    function getNumber() public view returns (uint256) {
        assert(number > 0);
        return number;
    }

    function checkEven() public view {
        if(number % 2 != 0) {
            revert("Number is not even");
        }
    }


    function resetNumber() public {
        require(number > 0, "Number is not set");
        number = 0;
    }

}
