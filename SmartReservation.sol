// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SmartReservation {
    address public owner;

    struct Booking {
        address user;
        string nama;
        string tanggal;
        string hotel;
        uint256 timestamp;
        bool verified;
    }

    mapping(string => Booking) public bookingsById;
    mapping(address => string[]) public myBookingIds;

    event Booked(string bookingId, address indexed user, string nama, string tanggal, string hotel);
    event Verified(string bookingId);

    constructor() {
        owner = msg.sender;
    }

    function makeReservation(
        string memory bookingId,
        string memory nama,
        string memory tanggal,
        string memory hotel
    ) public {
        require(bookingsById[bookingId].timestamp == 0, "Booking ID already exists");

        bookingsById[bookingId] = Booking({
            user: msg.sender,
            nama: nama,
            tanggal: tanggal,
            hotel: hotel,
            timestamp: block.timestamp,
            verified: false
        });

        myBookingIds[msg.sender].push(bookingId);

        emit Booked(bookingId, msg.sender, nama, tanggal, hotel);
    }

    function verifyBooking(string memory bookingId) public {
        require(msg.sender == owner, "Only owner can verify booking");
        require(bookingsById[bookingId].timestamp != 0, "Booking not found");

        bookingsById[bookingId].verified = true;

        emit Verified(bookingId);
    }

    function getMyBookings() public view returns (Booking[] memory) {
        string[] memory ids = myBookingIds[msg.sender];
        Booking[] memory result = new Booking[](ids.length);

        for (uint i = 0; i < ids.length; i++) {
            result[i] = bookingsById[ids[i]];
        }

        return result;
    }

    function getBookingById(string memory bookingId) public view returns (Booking memory) {
        return bookingsById[bookingId];
    }
}