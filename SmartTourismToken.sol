// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SmartTourismToken is ERC20 {
    struct Booking {
        string nama;
        string tanggal;
    }

    mapping(address => Booking[]) public bookings;

    constructor() ERC20("SmartTourismToken", "STT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function recordBooking(string memory nama, string memory tanggal) public {
        bookings[msg.sender].push(Booking(nama, tanggal));
    }

    function getMyBookings() public view returns (Booking[] memory) {
        return bookings[msg.sender];
    }
}