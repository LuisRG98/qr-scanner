import 'package:flutter/material.dart';

class CustomNavigatioBar extends StatelessWidget {
  const CustomNavigatioBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration_outlined),
            label: 'Directions'),
      ],
    );
  }
}
