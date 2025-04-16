import 'package:flutter/material.dart';
import 'package:vpn_app/constants/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String text;
  final List<Widget>? actions;
  const CustomAppbar(
      {super.key, this.height = 60.0, required this.text, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 2,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: actions);
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
