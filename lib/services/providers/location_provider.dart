import 'package:flutter/material.dart';
import 'package:vpn_app/Models/vpn_model.dart';
import 'package:vpn_app/services/apis/api.dart';

class LocationProvider extends ChangeNotifier {
  List<VpnModel> _vpnList = [];
  List<VpnModel> get vpnList => _vpnList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List _countryList = [];
  List _flagList = [];

  List get countryList => _countryList;
  List get flagList => _flagList;

  Future<void> getVpnData() async {
    _isLoading = true;
    _vpnList = await Api.getApiResponse();
    _isLoading = false;
    notifyListeners;
  }

  Future<void> getCountriesData() async {
    _isLoading = true;
    _countryList.clear();
    _flagList.clear();
    _countryList = await Api.getCountries();
    _flagList = await Api.getFlags();
    _isLoading = false;
    notifyListeners();
  }
}
