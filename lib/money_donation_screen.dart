import 'package:flutter/material.dart';

class MoneyDonationScreen extends StatelessWidget {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController paymentMethodController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Donasi Uang',
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
                controller: amountController,
                decoration: InputDecoration(
                  labelText: 'Jumlah Uang',
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
                controller: paymentMethodController,
                decoration: InputDecoration(
                  labelText: 'Metode Pembayaran (Bank/eMoney)',
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
                if (amountController.text.isNotEmpty && paymentMethodController.text.isNotEmpty) {
                  // Show success pop-up
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("Berhasil Mendonasikan Uang"),
                      content: Text("Terima kasih atas donasi uang Anda."),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );

                  // Reset input fields
                  amountController.clear();
                  paymentMethodController.clear();
                } else {
                  // Show failure pop-up
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("Tidak Berhasil Mendonasikan Uang"),
                      content: Text("Pastikan Anda mengisi semua kolom yang diperlukan."),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
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
                'Donasikan Uang',
                style: TextStyle(color: Colors.white), // Change button text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
