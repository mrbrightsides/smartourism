# SmartWisataChain

Simulasi plugin WordPress untuk sistem reservasi layanan pariwisata berbasis **Ethereum Smart Contract (Testnet only)**.  
Plugin ini dirancang sebagai bagian dari inisiatif digitalisasi pariwisata lokal menggunakan pendekatan desentralisasi.

![WordPress Plugin Status](https://img.shields.io/wordpress/plugin/status/smartwisatachain)
[![Plugin on WordPress.org](https://img.shields.io/badge/Plugin%20Directory-SmartWisataChain-blue)](https://wordpress.org/plugins/smartwisatachain/)

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

Smart contract ERC-20 untuk prototipe sistem pemesanan layanan pariwisata.

### Fitur Smart Contract:
- Penerbitan token `STT` menggunakan standar ERC20
- Fungsi `recordBooking()` untuk mencatat data booking (nama & tanggal)
- Fungsi `getMyBookings()` untuk menampilkan data booking per wallet
- Data bersifat transparan dan immutable di blockchain

### 📄 Catatan Tambahan
Plugin ini masih dalam tahap awal (alpha version) dan hanya berfungsi di jaringan testnet.
Harap tidak digunakan untuk transaksi komersial sampai lulus evaluasi resmi dan pengujian penuh.

### 🙌 Kontribusi dan Kontak
Proyek ini merupakan bagian dari riset disertasi dan pengembangan ekosistem blockchain lokal untuk sektor pariwisata.
Silakan buat pull request atau hubungi khudri.elpeef.com untuk kolaborasi.

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
