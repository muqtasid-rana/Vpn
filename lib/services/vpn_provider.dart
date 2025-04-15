import 'package:flutter/material.dart';
import 'package:vpn_app/services/vpn_engine.dart';

class VpnProvider extends ChangeNotifier {
  var vpnState = VpnEngine.vpnDisconnected;

  void changeState(vpnV) {
    vpnState = vpnV;
    notifyListeners();
  }
}
