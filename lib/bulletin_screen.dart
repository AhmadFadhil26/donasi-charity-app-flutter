import 'package:flutter/material.dart';

class BulletinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bulletin/News',
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
                    'Bencana Gunung Meletus',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://pict.sindonews.net/webp/732/pena/news/2024/07/07/174/1410703/gunung-lewotobi-lakilaki-kembali-erupsi-lontarkan-abu-setinggi-1000-meter-blz.webp',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Gunung Lewotobi Laki-Laki kembali menunjukkan aktivitas vulkaniknya dengan erupsi yang terjadi pada hari ini, Minggu (7/7/2024). Kolom abu teramati mencapai ketinggian sekitar 1.000 meter di atas puncak atau sekitar 2.584 meter di atas permukaan laut (Mdpl).',
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
                    'Bencana Banjir',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://pict.sindonews.net/webp/732/pena/news/2024/07/11/174/1413651/banjir-melanda-seram-bagian-barat-1938-jiwa-terdampak-svg.webp',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Banjir merendam 5 kecamatan di Kabupaten Seram Bagian Barat, Provinsi Maluku, setelah diguyur hujan deras selama beberapa hari dengan intensitas ringan hingga tinggi sejak Rabu (10/7/2024) pukul 07.00 WIT.',
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
                    'Bencana Gempa Bumi',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://pict.sindonews.net/webp/732/pena/news/2024/07/08/707/1411319/dampak-gempa-bumi-m44-di-kabupaten-batang-49-rumah-rusak-dan12-warga-lukaluka-nao.webp',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Badan Nasional Penanggulangan Bencana (BNPB) melalui tim kaji cepat di lapangan terus memutakhirkan data dampak kerusakan gempa bumi berkekuatan magnitudo (M)4,4 di wilayah Kabupaten Batang dan sekitarnya, Minggu (7/7/2024).',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          // Tambahkan lebih banyak item berita di sini sesuai kebutuhan
        ],
      ),
    );
  }
}
