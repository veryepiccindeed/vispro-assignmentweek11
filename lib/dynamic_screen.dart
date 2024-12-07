import 'package:flutter/material.dart';

class DynamicScreen extends StatelessWidget {
  final int count;

  DynamicScreen({required this.count});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Screens'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/first', // 
              (Route<dynamic> route) => false, 
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: count,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Screen ${index + 1}'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/generated',
                arguments: {
                  'pageNumber': index + 1,
                  'totalPages': count, // Mengirim total halaman
                },
              );
            },
          );
        },
      ),
    );
  }
}
