import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/', // Route ke main.dart
              (Route<dynamic> route) => false, // Menghapus semua route sebelumnya
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/second',
                  (Route<dynamic> route) => false, // Menghapus semua route sebelumnya
                );
              },
              child: Text('Go to Second Screen'), // Tombol untuk pergi ke Second Screen
            ),
            SizedBox(height: 20), // Spasi antara tombol
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/', // Route ke main.dart
                  (Route<dynamic> route) => false, // Menghapus semua route sebelumnya
                );
              },
              child: Text('Go Back to Main'), // Tombol untuk kembali ke Main
            ),
          ],
        ),
      ),
    );
  }
}
