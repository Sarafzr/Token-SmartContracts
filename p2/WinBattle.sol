// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IEthermonLite {
    function initMonster(string memory _monsterName) external;
    function getName(address _monsterAddress) external view returns (string memory);
    function getFullName(address _monsterAddress) external view returns (string memory);
    function getNumWins(address _monsterAddress) external view returns (uint);
    function getNumLosses(address _monsterAddress) external view returns (uint);
    function battle() external returns (bool);
    function renameTitle(string calldata _newTitle) external;
}

/**
 * This includes a function you might find useful! You can run this by, for example, calling
 * `StringTools.makeString(32);`
 */
library StringTools {
    /**
     * Turns a uint256 number into a string representing the number. This
     * function might be useful to you if you plan to change the challenger
     * name. It's NOT necessary to use this to win.
     * @param number Number to convert to a string.
     * @return string form of the number
     */
    function makeString(uint256 number) internal pure returns (string memory) {
        if (number == 0) {
            return "0";
        }
        uint strLen = 0;
        uint x = number;
        while (x > 0) {
            x /= 10;
            strLen++;
        }
        bytes memory strBytes = new bytes(strLen);
        x = number;
        for (uint i = 0; i < strLen; i++) {
            strBytes[strLen - i - 1] = bytes1(uint8(48 + (x % 10)));
            x /= 10;
        }
        return string(strBytes);
    }
}

contract WinBattle {
    // TODO: Implement this contract for problem 2.
    IEthermonLite ethermon;

    function setup() public{
        ethermon =  IEthermonLite(address(0xcf2c406f58f9961D468738d8975B16936EE71CE7));
        ethermon.initMonster("sf647");
    }
    
    function win() public returns (bool){
        uint dice=uint(blockhash(block.number-1));
        string memory fullName = ethermon.getFullName(address(this));
        uint hashName=uint(sha256(bytes(fullName)));
        uint challengeDice=dice^hashName;
        uint i=32;
        while(challengeDice%64 != 0) { 
            ethermon.renameTitle(StringTools.makeString(i));
            fullName = ethermon.getFullName(address(this));
            hashName=uint(sha256(bytes(fullName)));
            challengeDice=dice^hashName;
            i++;
        }

        if (challengeDice%64==0){
            for(uint x=0; x<50; x++){
                ethermon.battle();
            }
            return true;
        }
        
        return false;
    }
    
}
