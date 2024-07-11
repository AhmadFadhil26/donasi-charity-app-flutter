import 'package:flutter/material.dart';
import 'clothing_donation_screen.dart';
import 'food_donation_screen.dart';
import 'money_donation_screen.dart';
import 'bulletin_screen.dart';
import 'donation_results_screen.dart';
import 'history_screen.dart';
import 'profile_screen.dart';

class DonationTypesScreen extends StatefulWidget {
  @override
  _DonationTypesScreenState createState() => _DonationTypesScreenState();
}

class _DonationTypesScreenState extends State<DonationTypesScreen> {
  final List<String> donationTypes = [
    'Pakaian',
    'Makanan',
    'Uang',
  ];

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DonationTypesScreenContent(),
    HistoryScreen(),
    ProfileScreen(),
    BulletinScreen(),
    DonationResultsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Bulletin/News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Donation Results',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DonationTypesScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> donationTypes = [
      'Pakaian',
      'Makanan',
      'Uang',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jenis Donasi',
          style: TextStyle(color: Colors.white), // Change text color to white
        ),
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false, // Menghapus tombol kembali
      ),
      body: ListView.builder(
        itemCount: donationTypes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Rounded corners for the cards
            ),
            child: ListTile(
              title: Text(
                donationTypes[index],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyan, // Change text color to cyan
                ),
              ),
              onTap: () {
                // Add navigation logic based on donation type
                if (donationTypes[index] == 'Pakaian') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClothingDonationScreen()),
                  );
                } else if (donationTypes[index] == 'Makanan') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FoodDonationScreen()),
                  );
                } else if (donationTypes[index] == 'Uang') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoneyDonationScreen()),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
