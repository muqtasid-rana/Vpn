import 'dart:developer';

import 'package:csv/csv.dart';
import 'package:http/http.dart';
import 'package:vpn_app/Models/vpn_model.dart';
import 'package:vpn_app/services/apis/urls.dart';

class Api {
  static Future getApiResponse() async {
    final response = await get(Uri.parse(baseUrl));
    final csvString = response.body.split("#")[1].replaceAll("*", "");
    List<List<dynamic>> csvList = const CsvToListConverter().convert(csvString);
    List<VpnModel> vpnList = [];

    final header = csvList[0]; // First row is the header

    for (int i = 1; i < csvList.length; ++i) {
      if (csvList[i].length != header.length) continue; // skip invalid rows

      Map<String, dynamic> tempJson = {};
      for (int j = 0; j < header.length; ++j) {
        tempJson[header[j].toString()] = csvList[i][j];
      }

      vpnList.add(VpnModel.fromJson(tempJson));
    }

    // Log the first item as example
    if (vpnList.isNotEmpty) {
      log(vpnList.first.HostName);
    }
  }

  static Future getCountries() async {
    List countries = [];
    try {
      final response = await get(Uri.parse(baseUrl));
      List<String> lines = response.body.split("\n");
      print(lines);

      Set<String> uniqueCountries = {};
      for (int i = 2; i < lines.length; i++) {
        List<String> serverInfo = lines[i].split(',');

        if (serverInfo.length > 7) {
          uniqueCountries.add(serverInfo[5]);
        }
      }

      countries = uniqueCountries.toList();
      print(countries);
      return countries;
    } catch (e) {
      print(e);
    }
  }

  static Future getFlags() async {
    List flags = [];
    try {
      final response = await get(Uri.parse(baseUrl));
      List<String> lines = response.body.split("\n");
      print(lines);

      Set<String> uniqueCountries = {};
      for (int i = 2; i < lines.length; i++) {
        List<String> serverInfo = lines[i].split(',');

        if (serverInfo.length > 6) {
          uniqueCountries.add(serverInfo[6]);
        }
      }

      flags = uniqueCountries.toList();
      return flags;
    } catch (e) {
      print(e);
    }
  }
}
