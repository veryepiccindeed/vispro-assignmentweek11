import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
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
                  '/third',
                  (Route<dynamic> route) => false, // Menghapus semua route sebelumnya
                );
              },
              child: Text('Go to Third Screen'), // Tombol untuk pergi ke Third Screen
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
