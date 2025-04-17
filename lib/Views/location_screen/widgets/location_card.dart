import 'package:flutter/material.dart';
import 'package:vpn_app/constants/colors.dart';

class LocationCard extends StatelessWidget {
  final String countryName, flag;
  final void Function(bool value) onTap;
  const LocationCard(
      {super.key,
      required this.countryName,
      required this.flag,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ExpansionTile(
              onExpansionChanged: onTap,
              leading: Container(
                height: 42,
                width: 55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/flags/${flag.toLowerCase()}.png"),
                        fit: BoxFit.cover)),
              ),
              title: Text(
                countryName,
                style: TextStyle(
                    fontSize: 18,
                    color: secondaryColor,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_drop_down),
            ),
            Divider(
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
