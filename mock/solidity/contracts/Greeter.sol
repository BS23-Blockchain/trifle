//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

import "hardhat/console.sol";

contract Greeter is ERC721, Ownable {
	using Counters for Counters.Counter;

	/**
	 * @dev
	 *	It is used for generating unique token ids
	 */
	Counters.Counter private _tokenIdNonce;

	/**
	 * @dev
	 *	Map that tracks the items info with token id as key
	 */
	mapping(uint => string) private _tokenGreetings;

	constructor() ERC721("Greeting", "GRT") {
		// empty constructor
	}
}
