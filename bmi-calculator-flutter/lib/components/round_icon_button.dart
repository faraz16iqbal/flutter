import 'package:flutter/material.dart';

// Custom widgets
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: IconTheme(
        child: Icon(icon),
        data: IconThemeData(size: 18, color: Colors.white),
      ),
      constraints: BoxConstraints.tightFor(width: 48, height: 48),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
