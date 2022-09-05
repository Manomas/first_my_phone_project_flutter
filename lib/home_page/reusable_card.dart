import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;

  final Widget child;

  const ReusableCard({
    Key? key,
    this.color = Colors.greenAccent,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
