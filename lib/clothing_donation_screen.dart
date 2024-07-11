import 'package:flutter/material.dart';

class ClothingDonationScreen extends StatefulWidget {
  @override
  _ClothingDonationScreenState createState() => _ClothingDonationScreenState();
}

class _ClothingDonationScreenState extends State<ClothingDonationScreen> {
  TextEditingController jumlahController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  bool isInputValid() {
    return jumlahController.text.isNotEmpty &&
        deskripsiController.text.isNotEmpty &&
        alamatController.text.isNotEmpty;
  }

  void resetInputs() {
    jumlahController.clear();
    deskripsiController.clear();
    alamatController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Donasi Pakaian',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
        iconTheme: IconThemeData(color: Colors.white),
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
                controller: jumlahController,
                decoration: InputDecoration(
                  labelText: 'Jumlah Pakaian',
                  labelStyle: TextStyle(color: Colors.cyan),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.cyan),
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
                  labelStyle: TextStyle(color: Colors.cyan),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                style: TextStyle(color: Colors.cyan),
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
                  labelStyle: TextStyle(color: Colors.cyan),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                style: TextStyle(color: Colors.cyan),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (isInputValid()) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Berhasil Mendonasikan Pakaian"),
                        content: Text("Terima kasih atas donasi pakaian Anda."),
                        actions: <Widget>[
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                              resetInputs(); // Reset inputs after successful donation
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Tidak Berhasil Mendonasikan Pakaian"),
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
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'Donasikan Pakaian',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
