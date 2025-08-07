# SmartTourismChain

Simulasi plugin WordPress untuk sistem reservasi layanan pariTourism berbasis **Ethereum Smart Contract (Testnet only)**.  
Plugin ini dirancang sebagai bagian dari inisiatif digitalisasi pariTourism lokal menggunakan pendekatan desentralisasi.

[Plugin SmartTourismChain (Status: In Review)](https://wordpress.org/plugins/smarttourismchain/)

[![Plugin on WordPress.org](https://img.shields.io/badge/Plugin%20Directory-SmartTourismChain-blue)](https://wordpress.org/plugins/smarttourismchain/)

---

## 🔗 Fitur Utama Plugin
- Integrasi MetaMask untuk verifikasi pengguna
- Form pemesanan langsung tercatat on-chain
- Kompatibel dengan WordPress 6.5+
- Lightweight, tidak mengganggu performa website
- Tersedia demo simulasi di: [smartourism.elpeef.com](https://smartourism.elpeef.com)

---

## 💡 Use Case
Plugin ini dibuat untuk **simulasi pendidikan** dan **eksperimen riset**, terutama:
- Sistem reservasi wisata tanpa pihak ketiga
- Representasi identitas pengguna menggunakan wallet address
- Otomatisasi proses pencatatan reservasi langsung ke smart contract

---

## 🔐 Backend Smart Contract (ERC-20 Token + Booking)

Smart contract ERC-20 untuk prototipe sistem pemesanan layanan pariTourism.

---

### 🔧 Fitur Smart Contract:
- Penerbitan token `STT` menggunakan standar ERC20
- Fungsi `recordBooking()` untuk mencatat data booking (nama & tanggal)
- Fungsi `getMyBookings()` untuk menampilkan data booking per wallet
- Data bersifat transparan dan immutable di blockchain

---

### 📄 Catatan Tambahan
Plugin ini masih dalam tahap awal (alpha version) dan hanya berfungsi di jaringan testnet.
Harap tidak digunakan untuk transaksi komersial sampai lulus evaluasi resmi dan pengujian penuh.

---

### 🙌 Kontribusi dan Kontak
Proyek ini merupakan bagian dari riset disertasi dan pengembangan ekosistem blockchain lokal untuk sektor pariwisata.
Silakan buat pull request atau hubungi khudri.elpeef.com untuk kolaborasi.

---

### 🧪 Lingkungan Uji:
Solidity v0.8.x

Jaringan: Ethereum Sepolia Testnet

Tools: Remix IDE, MetaMask, OpenZeppelin, Hardhat (opsional untuk dev lanjutan)

---

### 🔗 Contoh Interaksi:
Deploy SmartTourismToken.sol

Transfer token ke user

Deploy SmartReservation.sol dan hubungkan dengan address token

User memesan dengan memanggil fungsi bookReservation() dan mengirimkan detail reservasi + token

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
