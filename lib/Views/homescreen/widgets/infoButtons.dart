import 'package:flutter/material.dart';
import 'package:vpn_app/constants/colors.dart';

class InfoButton extends StatelessWidget {
  final Color color;
  final String text;
  final String subText;
  final IconData icon;

  const InfoButton({
    super.key,
    required this.text,
    required this.icon,
    this.color = kBlue,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
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
        Text(
          text,
          style: const TextStyle(color: Colors.blueGrey, fontSize: 10),
        ),
      ],
    );
  }
}
