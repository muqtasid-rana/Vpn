import 'package:flutter/material.dart';
import 'package:vpn_app/constants/colors.dart';

class InfoButton extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;

  const InfoButton({
    super.key,
    required this.text,
    required this.icon,
    this.color = kBlue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Icon(icon, color: secondaryColor),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: const TextStyle(color: secondaryColor),
        ),
      ],
    );
  }
}
