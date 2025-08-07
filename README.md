# SmartTourismChain – Smart Contract Backend

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.16763407.svg)](https://doi.org/10.5281/zenodo.16763407)

Repositori ini berisi dua smart contract utama untuk simulasi sistem reservasi layanan pariwisata berbasis blockchain.  
Seluruh kontrak ditulis dalam bahasa **Solidity v0.8.x** dan diuji pada jaringan **Ethereum Sepolia Testnet**.  
Kontrak ini dikembangkan sebagai backend untuk berbagai eksperimen desentralisasi dalam sektor pariwisata digital.

---

## 📦 Daftar Smart Contract

1. **SmartTourismToken.sol**  
   Kontrak ERC-20 standar untuk token `STT` (Smart Tourism Token).  
   Token ini digunakan sebagai media transaksi dalam sistem reservasi.

2. **SmartReservation.sol**  
   Kontrak untuk mencatat data reservasi wisata secara _on-chain_.  
   Mendukung fungsi pemesanan dan pelacakan histori reservasi per wallet address.

---

## 🧪 Lingkungan Uji

- Bahasa: **Solidity v0.8.x**
- Testnet: **Ethereum Sepolia**
- Tools: Remix IDE, MetaMask, OpenZeppelin
- Opsional: Hardhat & Ganache untuk pengujian lanjutan

---

## 🔧 Fitur Kontrak

### 🪙 SmartTourismToken.sol
- Implementasi ERC-20 menggunakan library OpenZeppelin
- Penamaan token: `Smart Tourism Token (STT)`
- Fungsi dasar: transfer, approve, mint, dsb.

### 📝 SmartReservation.sol
- `recordBooking(nama, tanggal)` untuk mencatat reservasi baru
- `getMyBookings()` untuk melihat seluruh histori reservasi pengguna
- Data disimpan dalam array `Booking[]` berdasarkan wallet `msg.sender`
- Terintegrasi dengan token `STT` sebagai prasyarat transaksi

---

## 🎯 Tujuan dan Use Case
Eksperimen pencatatan reservasi digital tanpa database terpusat

Otomatisasi transaksi wisata berbasis token

Edukasi dan simulasi blockchain tourism untuk keperluan riset dan pengajaran

---

## ⚠️ Catatan Penting
Kontrak ini hanya digunakan pada jaringan testnet (Sepolia).

Belum direkomendasikan untuk penggunaan komersial.

Lisensi: MIT License

---

## 👨‍💻 Pengembang dan Kontributor
Akhmad Khudri (@ELPEEF)
Proyek ini merupakan bagian dari riset disertasi dan pengembangan sistem digital pariwisata berbasis blockchain.

---

## 📩 Untuk kolaborasi atau pertanyaan teknis, kunjungi: khudri.elpeef.com

---

## 🔗 Contoh Kode

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
