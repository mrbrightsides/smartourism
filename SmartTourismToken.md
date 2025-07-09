🧳 SmartTourismToken

![Version](https://img.shields.io/badge/version-v1.0-blue)  
![License](https://img.shields.io/badge/license-MIT-green)  
![Status](https://img.shields.io/badge/status-Prototype-orange)

Smart contract ERC-20 untuk prototipe sistem pemesanan layanan pariwisata berbasis blockchain.

> Dibuat untuk mendukung simulasi digitalisasi transaksi di sektor pariwisata, sebagai bagian dari riset disertasi berbasis _Design Science Research Methodology (DSRM)_.

---

🎯 Siapa yang Cocok Menggunakan?

- 📘 **Peneliti & Mahasiswa**  
  Cocok untuk tugas akhir, riset blockchain, atau simulasi sistem tanpa backend tradisional.

- 🏨 **Pelaku Pariwisata & UMKM**  
  Ingin bereksperimen dengan sistem pemesanan tanpa aplikasi besar, cukup modal wallet dan browser.

- 👨‍🏫 **Dosen / Pembimbing Akademik**  
  Untuk mengamati penerapan teknologi Web3 dan kontrak pintar secara langsung dalam pembelajaran.

- 🧪 **Developer Web3 Pemula**  
  Proyek ini bisa jadi template awal belajar integrasi ERC20 + fungsi pemesanan berbasis mapping.

---

🚀 Fitur Utama

- 🪙 **Penerbitan Token STT**  
  Token `STT` (SmartTourismToken) menggunakan standar ERC-20 dari OpenZeppelin.

- 📝 **recordBooking()**  
  Menyimpan data pemesanan (nama & tanggal) ke blockchain, langsung terkait address wallet pengguna.

- 🔎 **getMyBookings()**  
  Mengambil semua data booking berdasarkan address pengguna (`msg.sender`).

---

💡 Cara Kerja Singkat

1. Pengguna membuka aplikasi Web3 (via MetaMask)
2. Wallet terhubung otomatis ke sistem
3. Input nama & tanggal → klik “Pesan”
4. Fungsi `recordBooking()` dipanggil → data tersimpan on-chain
5. Pengguna bisa melihat datanya via `getMyBookings()`

---

🔧 Teknologi yang Digunakan

- [Solidity ^0.8.x](https://docs.soliditylang.org/)
- [OpenZeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts)
- Remix IDE (untuk kompilasi & deploy)
- MetaMask (wallet pengguna)
- JSON hasil kompilasi tersedia di folder `artifacts/`

---

📁 Struktur Folder

```bash
📦 smartourism
┣ 📁 artifacts/
┃ ┣ 📄 SmartTourismToken.json
┃ ┗ 📄 SmartTourismToken_metadata.json
┣ 📄 smartourism.sol
┣ 📄 README.md

---

📜 Lisensi

Kode ini menggunakan lisensi MIT License:
🔓 Bebas digunakan, dimodifikasi, dan dikembangkan lebih lanjut untuk keperluan non-komersial maupun edukasi.

---

👨‍💻 Author

Akhmad Khudri
Dosen & Peneliti | Universitas Bina Darma
📄 [Disertasi: Transformasi Digital Berbasis Smart Contract di Sektor Pariwisata]
🔗 GitHub: @mrbrightsides
📎 Gist Code: SmartTourismToken Gist
