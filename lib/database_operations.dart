import 'package:http/http.dart' as http;

Future<void> insertDonation(String type, String description, int quantity, String pickupAddress, double amount) async {
  var url = 'http://your_domain/path/to/database.php';
  var response = await http.post(Uri.parse(url), body: {
    'type': type,
    'description': description,
    'quantity': quantity.toString(),
    'pickupAddress': pickupAddress,
    'amount': amount.toString()
  });

  if (response.statusCode == 200) {
    // Berhasil memasukkan donasi ke database
  } else {
    // Gagal melakukan operasi
  }
}
