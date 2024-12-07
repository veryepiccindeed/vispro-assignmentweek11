import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
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
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Masukkan jumlah layar (max 200)',
                errorText: _validateInput(_controller.text),
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                String? errorMessage = _validateInput(_controller.text);
                if (errorMessage != null) {
                  // Menampilkan Snackbar jika ada error
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(errorMessage)),
                  );
                } else {
                  int count = int.parse(_controller.text);
                  Navigator.pushNamed(
                    context,
                    '/dynamic',
                    arguments: count,
                  );
                }
              },
              child: Text('Generate Screens'), // Tombol untuk generate
            ),
          ],
        ),
      ),
    );
  }

  String? _validateInput(String input) {
    if (input.isEmpty) {
      return 'Input tidak boleh kosong';
    }
    final intValue = int.tryParse(input);
    if (intValue == null || intValue < 1 || intValue > 200) {
      return 'Input harus berupa angka antara 1 dan 200';
    }
    return null;
  }
}
