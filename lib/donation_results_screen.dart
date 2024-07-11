import 'package:flutter/material.dart';

class DonationResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Donation Results',
          style: TextStyle(color: Colors.white), // Mengubah warna teks judul menjadi putih
        ),
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false, // Menghapus tombol kembali
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gunung Meletus',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://cdns.klimg.com/merdeka.com/i/w/news/2022/01/12/1396816/540x270/qnet-salurkan-bantuan-makanan-untuk-korban-erupsi-gunung-semeru-lumajang.jpeg',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Indonesia kembali berduka karena bencana alam. Di awal Desember 2021, terjadi letusan gunung Semeru yang terletak di Kabupaten Lumajang Jawa Timur.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Banjir',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://unair.ac.id/wp-content/uploads/2021/02/PUSPAS-DONASI-1024x766.jpg',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Koordinasinya dengan LPPM, sedangkan kami (PUSPAS, Red) yang melakukan crowdfunding. Sehingga bantuan yang disalurkan bisa tersampaikan kepada para korban bencana dengan efektif,” jelasnya dalam wawancara Jumat (12/02/2021).',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gempa Bumi',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://news.uad.ac.id/wp-content/uploads/IMM-FAST-Universitas-Ahmad-Dahlan-UAD-gelar-aksi-kemanusiaan-untuk-korban-bencana-alam-Foto-Istimewa-1030x623.jpg',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Gempa bumi bermagnitudo 6.1 di Kabupaten Pasaman Barat, Sumatera Barat, dan banjir yang melanda Kota Serang, Banten, membuat Ikatan Mahasiswa Muhammadiyah (IMM) Fakultas Sains dan Teknologi Terapan (FAST) Universitas Ahmad Dahlan (UAD).',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          // Tambahkan lebih banyak item hasil donasi di sini sesuai kebutuhan
        ],
      ),
    );
  }
}
