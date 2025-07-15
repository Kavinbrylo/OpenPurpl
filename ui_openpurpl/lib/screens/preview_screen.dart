import 'dart:io';

import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  final double screenSize;
  final double ram;
  final double storage;
  final double camera;

  PreviewScreen({
    required this.screenSize,
    required this.ram,
    required this.storage,
    File? imageFile,
    required this.camera,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Preview")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset('assets/apple.jpg', fit: BoxFit.contain),
            ),
            SizedBox(height: 20),
            Text("Screen: $screenSize inch", style: TextStyle(fontSize: 16)),
            Text("RAM: ${ram} GB", style: TextStyle(fontSize: 16)),
            Text("Storage: ${storage} GB", style: TextStyle(fontSize: 16)),
            Text("Camera: ${camera} MP", style: TextStyle(fontSize: 16)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Published Successfully")),
                );
              },
              child: Text("Publish"),
            ),
          ],
        ),
      ),
    );
  }
}
