import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/ui_provider.dart';

class CustomNavigatioBar extends StatelessWidget {
  const CustomNavigatioBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => uiProvider.setSelectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration), label: 'Directions'),
      ],
    );
  }
}
