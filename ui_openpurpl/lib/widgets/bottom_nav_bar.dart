import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.hub), label: "My Hub"),
        BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "Condition"),
        BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: "Inspiration"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        
      ],
      currentIndex: 0,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/explore');
            break;
          case 1:
            Navigator.pushNamed(context, '/myHub');
            break;
          case 2:
            Navigator.pushNamed(context, '/condition');
            break;
          case 3:
            Navigator.pushNamed(context, '/inspiration');
            break;
          case 4:
            Navigator.pushNamed(context, '/settings');
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
    );
  }
}
