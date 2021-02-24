import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  // const ReuseableCard({
  //   Key key,
  // }) : super(key: key);

  ReuseableCard(
      {@required this.color, this.cardChild, this.onPress}); //required

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
