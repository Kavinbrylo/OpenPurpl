import 'package:flutter/material.dart';
import 'explore_screen.dart';

class LoginScreen extends StatelessWidget {
  Widget loginButton(String label, IconData icon) {
    return ElevatedButton.icon(
      onPressed: () {
      },
      icon: Icon(icon),
      label: Text("Log in with $label"),
      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            loginButton("Google", Icons.g_mobiledata),
            SizedBox(height: 10),
            loginButton("Apple", Icons.apple),
            SizedBox(height: 10),
            loginButton("Microsoft", Icons.facebook),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ExploreScreen()));
              },
              child: Text("Skip to Explore"),
            ),
          ],
        ),
      ),
    );
  }
}
