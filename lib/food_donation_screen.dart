import 'package:flutter/material.dart';

class FoodDonationScreen extends StatelessWidget {
  final TextEditingController jumlahMakananController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Berhasil Mendonasikan Makanan"),
          content: Text("Terima kasih atas donasi makanan Anda."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showFailureDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Tidak Berhasil Mendonasikan Makanan"),
          content: Text("Pastikan Anda mengisi semua kolom yang diperlukan."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Donasi Makanan',
          style: TextStyle(color: Colors.white), // Change text color to white
        ),
        backgroundColor: Colors.cyan,
        iconTheme: IconThemeData(color: Colors.white), // Change back button color to white
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                controller: jumlahMakananController,
                decoration: InputDecoration(
                  labelText: 'Jumlah Makanan',
                  labelStyle: TextStyle(color: Colors.cyan), // Change label text color to cyan
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.cyan), // Change input text color to cyan
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                controller: deskripsiController,
                decoration: InputDecoration(
                  labelText: 'Deskripsi',
                  labelStyle: TextStyle(color: Colors.cyan), // Change label text color to cyan
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                style: TextStyle(color: Colors.cyan), // Change input text color to cyan
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                controller: alamatController,
                decoration: InputDecoration(
                  labelText: 'Alamat Penjemputan',
                  labelStyle: TextStyle(color: Colors.cyan), // Change label text color to cyan
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                style: TextStyle(color: Colors.cyan), // Change input text color to cyan
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulasi penanganan donasi makanan
                if (jumlahMakananController.text.isNotEmpty &&
                    deskripsiController.text.isNotEmpty &&
                    alamatController.text.isNotEmpty) {
                  // Penanganan donasi makanan sukses
                  showSuccessDialog(context);
                  // Reset semua input setelah berhasil donasi
                  jumlahMakananController.clear();
                  deskripsiController.clear();
                  alamatController.clear();
                } else {
                  // Penanganan donasi makanan gagal
                  showFailureDialog(context);
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan, // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'Donasikan Makanan',
                style: TextStyle(color: Colors.white), // Change button text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
