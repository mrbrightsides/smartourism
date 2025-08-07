# SmartTourismChain – Smart Contract Backend

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.16763407.svg)](https://doi.org/10.5281/zenodo.16763407)

This repository contains two core smart contracts for simulating a blockchain-based tourism reservation system.  
All contracts are written in **Solidity v0.8.x** and tested on the **Ethereum Sepolia Testnet**.  
The contracts are developed as a backend for various decentralization experiments in the digital tourism sector.

---

## 📦 Smart Contract List

1. **SmartTourismToken.sol**  
   Standard ERC-20 contract for the `STT` (Smart Tourism Token).  
   Used as a transaction medium in the reservation system.

2. **SmartReservation.sol**  
   Records tourism booking data _on-chain_.  
   Supports booking functions and history tracking per wallet address.

---

## 🧪 Testing Environment

- Language: **Solidity v0.8.x**
- Network: **Ethereum Sepolia Testnet**
- Tools: Remix IDE, MetaMask, OpenZeppelin
- Optional: Hardhat & Ganache for advanced development

---

## 🔧 Contract Features

### 🪙 SmartTourismToken.sol
- ERC-20 implementation using OpenZeppelin library
- Token name: `Smart Tourism Token (STT)`
- Basic functions: transfer, approve, mint, etc.

### 📝 SmartReservation.sol
- `recordBooking(name, date)` to record a new reservation
- `getMyBookings()` to retrieve a user's reservation history
- Data stored in `Booking[]` arrays mapped by `msg.sender`
- Integrated with `STT` token as a prerequisite for booking

---

## 🎯 Objectives and Use Cases

- Experimenting with digital reservation recording without centralized databases  
- Automating tourism transactions using tokenized assets  
- Supporting research and education in blockchain-based tourism systems  

---

## ⚠️ Important Notes

- These contracts are for testnet use only (Sepolia).  
- Not recommended for commercial deployment.  
- License: MIT License

---

## 👨‍💻 Developer & Contributor

**Akhmad Khudri** (@ELPEEF)  
This project is part of a doctoral research initiative on blockchain-based digital tourism systems.

---

## 📩 For collaboration or technical inquiries, visit: [khudri.elpeef.com](https://khudri.elpeef.com)

---

## 🔗 Code Example

```solidity
struct Booking {
    string name;
    string date;
}

mapping(address => Booking[]) public bookings;

function recordBooking(string memory name, string memory date) public {
    bookings[msg.sender].push(Booking(name, date));
}

function getMyBookings() public view returns (Booking[] memory) {
    return bookings[msg.sender];
}
