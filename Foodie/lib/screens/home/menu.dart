import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
          child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      )),
    );
  }
}
