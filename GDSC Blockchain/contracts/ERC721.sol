// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing OpenZeppelin's ERC721 and Ownable contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Defining our contract MyERC721
contract MyERC721 is ERC721, Ownable {
    // Variable to keep track of token count
    uint256 private _tokenCounter;

    // Constructor to set initial owner and token details
    constructor(
        address initialOwner
    ) ERC721("MyERC721", "M721") Ownable(initialOwner) {
        _tokenCounter = 0; // Initializing token counter
    }

    // Function to mint new tokens, accessible only by the owner
    function mint(address to) public onlyOwner {
        _mint(to, _tokenCounter); // Calling OpenZeppelin's _mint function
        _tokenCounter++; // Incrementing token counter
    }

    // Overriding balanceOf function to return balance of a given address
    function balanceOf(
        address owner
    ) public view override returns (uint256 balance) {
        return super.balanceOf(owner);
    }

    // Overriding ownerOf function to return owner of a given token
    function ownerOf(
        uint256 tokenId
    ) public view override returns (address owner) {
        return super.ownerOf(tokenId);
    }

    // Overriding approve function to approve a given address for a given token
    function approve(address to, uint256 tokenId) public override {
        super.approve(to, tokenId);
    }

    // Overriding getApproved function to get approved address for a given token
    function getApproved(
        uint256 tokenId
    ) public view override returns (address operator) {
        return super.getApproved(tokenId);
    }

    // Overriding setApprovalForAll function to set approval for a given operator
    function setApprovalForAll(
        address operator,
        bool approved
    ) public override {
        super.setApprovalForAll(operator, approved);
    }

    // Overriding isApprovedForAll function to check approval for a given operator
    function isApprovedForAll(
        address owner,
        address operator
    ) public view override returns (bool) {
        return super.isApprovedForAll(owner, operator);
    }

    // Overriding transferFrom function to transfer ownership of a given token
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public override {
        super.transferFrom(from, to, tokenId);
    }
}
