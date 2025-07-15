import 'package:flutter/material.dart';
import 'dart:io';
import 'preview_screen.dart';

class CreateIphoneScreen extends StatefulWidget {
  @override
  _CreateIphoneScreenState createState() => _CreateIphoneScreenState();
}

class _CreateIphoneScreenState extends State<CreateIphoneScreen> {
  double screenSize = 0;
  double ram = 0;
  double storage = 0;
  File? _image;
  double camera = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create iPhone")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset('assets/apple.jpg', fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Camera Added")));
                    },
                    child: Text("Add Cama"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Button Added")));
                    },
                    child: Text("Add Button"),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(labelText: "Screen Size"),
                keyboardType: TextInputType.number,
                onChanged: (val) =>
                    setState(() => screenSize = double.tryParse(val) ?? 0),
              ),
              TextField(
                decoration: InputDecoration(labelText: "RAM"),
                keyboardType: TextInputType.number,
                onChanged: (val) =>
                    setState(() => ram = double.tryParse(val) ?? 0),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Storage"),
                keyboardType: TextInputType.number,
                onChanged: (val) =>
                    setState(() => storage = double.tryParse(val) ?? 0),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Camera"),
                keyboardType: TextInputType.number,
                onChanged: (val) =>
                    setState(() => camera = double.tryParse(val) ?? 0),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PreviewScreen(
                        screenSize: screenSize,
                        ram: ram,
                        storage: storage,
                        camera: camera,
                        imageFile: _image,
                      ),
                    ),
                  );
                },
                child: Text("Preview"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
