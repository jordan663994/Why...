pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/drafts/Counters.sol";

contract BIG is ERC721Full {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721Full("BIG", "ITM") public {
    }


    #I had to compress it into a link to get the file to work
    function get_stock_history(address player, string memory tokenURI) public returns (uint256) {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId);
        _setTokenURI("https://quantshare.com/sa-620-10-new-ways-to-download-historical-stock-quotes-for-free", tokenURI);
    }
}
