import 'package:flutter/material.dart';

class GeneratedScreen extends StatelessWidget {
  final int pageNumber;
  final int totalPages;

  GeneratedScreen({required this.pageNumber, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generated Screen $pageNumber'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/first',
              (Route<dynamic> route) => false, // Menghapus semua route sebelumnya
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini adalah page $pageNumber'), // Menampilkan detail page
            SizedBox(height: 20), // Spasi antara tombol
            if (pageNumber > 1) // Jika bukan page pertama, tampilkan tombol Previous
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/generated',
                     arguments: {'pageNumber': pageNumber - 1, 'totalPages': totalPages}, // Kembali ke page sebelumnya
                  );
                },
                child: Text('Go to Previous Page'), // Tombol untuk pergi ke Previous Page
              ),
            if (pageNumber < totalPages) // Jika bukan halaman terakhir, tampilkan tombol Next
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/generated',
                     arguments: {'pageNumber': pageNumber + 1, 'totalPages': totalPages}, // Pergi ke page berikutnya
                  );
                },
                child: Text('Go to Next Page'), // Tombol untuk pergi ke Next Page
              ),
          ],
        ),
      ),
    );
  }
}

