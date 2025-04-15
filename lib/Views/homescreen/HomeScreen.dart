import 'package:flutter/material.dart';
import 'package:vpn_app/Views/homescreen/widgets/infoButtons.dart';
import 'package:vpn_app/Views/homescreen/widgets/widgets.dart';
import 'package:vpn_app/constants/colors.dart';
import 'package:vpn_app/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Free VPN", actions: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: secondaryColor,
                ))
          ],
        )
      ]),
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      InfoButton(text: "Speed", icon: Icons.speed),
                      SizedBox(height: 20),
                      InfoButton(text: "Location", icon: Icons.location_on),
                    ],
                  ),
                ),
                Expanded(child: Center(child: Widgets.powerButton(context))),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      InfoButton(text: "Ping", icon: Icons.network_check),
                      SizedBox(height: 20),
                      InfoButton(text: "IP", icon: Icons.wifi),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black38),
              child: Center(
                child: Text(
                  "Ad Display",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
