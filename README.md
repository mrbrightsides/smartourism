# SmartTourismToken

Smart contract ERC-20 untuk prototipe sistem pemesanan layanan pariwisata berbasis blockchain.

## 🔗 Fitur Utama
- Penerbitan token `STT` menggunakan standar ERC20
- Fungsi `recordBooking()` untuk mencatat data booking (nama & tanggal)
- Fungsi `getMyBookings()` untuk menampilkan data booking berdasarkan wallet pengirim
- Data tersimpan secara transparan dan permanen di blockchain
- Dibangun menggunakan Solidity 0.8.x dan pustaka OpenZeppelin

## 💡 Use Case
Simulasi ini menggambarkan sistem reservasi berbasis blockchain, di mana:
- **User** hanya perlu koneksi MetaMask tanpa isi form
- Identitas user direpresentasikan oleh **wallet address**
- Semua transaksi bisa dicek langsung di **Etherscan**

## 🛠 Teknologi
- Remix Ethereum IDE
- MetaMask Wallet
- Ethereum Testnet (contoh: Sepolia)
- GitHub untuk versi kontrol
- Solidity

## ⚙️ Smart Contract

```solidity
struct Booking {
    string nama;
    string tanggal;
}

mapping(address => Booking[]) public bookings;

function recordBooking(string memory nama, string memory tanggal) public {
    bookings[msg.sender].push(Booking(nama, tanggal));
}

function getMyBookings() public view returns (Booking[] memory) {
    return bookings[msg.sender];
}
