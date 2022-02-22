import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key, this.text, this.color, this.onTap})
      : super(key: key);
  final String? text;
  final Color? color;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 100,
        width: double.infinity,
        color: color,
        child: Container(
          margin: EdgeInsets.only(left: 16),
          child: Text(
            text!,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
