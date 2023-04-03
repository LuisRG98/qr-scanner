import 'package:flutter/material.dart';

class ScannButton extends StatelessWidget {
  const ScannButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.filter_center_focus),
      onPressed: () {},
    );
  }
}
