
# Smart Contracts Overview

This project uses two smart contracts as part of the SmartTourismChain (STC) system:

---

## 1. `SmartTourismToken.sol`

### Description
A standard ERC-20 token used for payments, incentives, and rewards within the Smart Tourism ecosystem.

### Key Functions
- `constructor`: Initializes the token with name, symbol, and total supply.
- `transfer`: Transfers tokens between accounts.
- `balanceOf`: Returns the balance of a given address.
- `approve`: Approves a spender to withdraw tokens.
- `allowance`: Checks the remaining tokens approved for spending.
- `decimals`: Returns the number of decimals used.

---

## 2. `SmartReservation.sol`

### Description
This contract handles on-chain reservation records, binding token usage to real reservation activities.

### Key Functions
- `constructor(address tokenAddress)`: Initializes contract and connects with deployed token.
- `bookReservation(string memory userName, string memory date, string memory destination)`: 
  Adds a new reservation on-chain.
- `getReservation(uint id)`: 
  Retrieves specific reservation details.
- `getTotalReservations()`: 
  Returns the number of total reservations made.

### Data Fields
- `userName`: Traveler’s name
- `date`: Date of reservation
- `destination`: Travel location
- `timestamp`: Blockchain timestamp
- `user`: Wallet address of booker

---

## Deployment Details

- **IDE**: Remix IDE
- **Solidity Version**: ^0.8.0
- **Network**: Ethereum Sepolia Testnet
- **Deployed Via**: MetaMask and Web3 Provider

---

## Security and Best Practices

- Uses Solidity 0.8.x for built-in overflow protection (no need for SafeMath)
- All user data stored is public (no PII like phone/email)
- Token and reservation contracts are separated for modularity
- Consider implementing access control (`Ownable`) for production

---

Generated on 2025-08-07 by STC Dev Team
