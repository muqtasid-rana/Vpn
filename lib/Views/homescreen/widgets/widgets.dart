import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vpn_app/Views/homescreen/widgets/infoButtons.dart';
import 'package:vpn_app/constants/colors.dart';
import 'package:vpn_app/services/vpn_engine.dart';
import 'package:vpn_app/services/vpn_provider.dart';

class Widgets {
  static Widget powerButton(context) {
    final provider = Provider.of<VpnProvider>(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kBlue.withOpacity(0.2),
          ),
        ),

        // Outer Circle Button
        Semantics(
          child: InkWell(
            onTap: () {
              provider.changeState(VpnEngine.vpnConnected);
            },
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.power_settings_new,
                    size: 40,
                    color: kBlue,
                  ),
                  Text(
                    "Connect",
                    style: TextStyle(
                      color: kBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  static Widget showInfo() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
          child: InfoButton(text: "Speed", icon: Icons.webhook_sharp),
        ),
        InfoButton(text: "Speed", icon: Icons.webhook_sharp)
      ],
    );
  }
}
