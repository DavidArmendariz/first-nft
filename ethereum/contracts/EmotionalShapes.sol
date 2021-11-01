// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract EmotionalShapes is ERC721 {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIdCounter;

  constructor() ERC721("EmotionalShapes", "ESS") {}

  function _baseURI() internal pure override returns (string memory) {
    return "http://9a0d-2800-bf0-89-1482-b67e-f7ff-15e1-56e1.ngrok.io/api/erc721/";
  }

  function mint(address to) public returns (uint256) {
    require(_tokenIdCounter.current() < 3); 
    _tokenIdCounter.increment();
    _safeMint(to, _tokenIdCounter.current());

    return _tokenIdCounter.current();
  }
}