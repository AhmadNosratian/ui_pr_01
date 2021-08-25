import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  IconContent({this.icon, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: Icon(
              icon,
              size: 44.0,
              color: color,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(text),
      ],
    );
  }
}
