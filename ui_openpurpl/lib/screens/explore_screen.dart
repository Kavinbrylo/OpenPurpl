import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import 'create_iphone_screen.dart';

class ExploreScreen extends StatelessWidget {
  final List<String> products = [
    "iPhone", "iPhone", "iMac", "Phone", "iMac", "iMac"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Explore Products")),
      bottomNavigationBar: BottomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (_, index) {
          return Card(
            child: Center(child: Text(products[index])),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => CreateIphoneScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
