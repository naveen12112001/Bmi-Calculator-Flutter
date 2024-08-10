import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.displayIcon, required this.displayText});
  final Icon displayIcon;
  final Text displayText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        displayIcon,
        SizedBox(
          height: 15.0,
        ),
        displayText,
      ],
    );
  }
}
