import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.cyan,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Donasi pakaian
            Text(
              'Donatur: Fadhil',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Jenis Donasi: Pakaian',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Jumlah: 10',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Deskripsi: Pakaian Tidur',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Alamat Pengambilan: Jalan Miana',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Donasi makanan
            Text(
              'Donatur: Fadhil',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Jenis Donasi: Makanan',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Jumlah: 100',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Deskripsi: Masakan Padang',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Alamat Pengambilan: Jalan Bambu Asri',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Donasi uang
            Text(
              'Donatur: Fadhil',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Jenis Donasi: Uang',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Jumlah: Rp 2.000.000',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Metode Pembayaran: Bank',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
