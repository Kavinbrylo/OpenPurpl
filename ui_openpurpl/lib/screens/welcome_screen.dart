import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Astore", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Text("Design the Future.\nOne Tap at a Time.", textAlign: TextAlign.center),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              child: Text("Slide to Enter →"),
            )
          ],
        ),
      ),
    );
  }
}
