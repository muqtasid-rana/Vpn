import 'dart:convert';
import 'dart:developer';

import 'package:csv/csv.dart';
import 'package:http/http.dart';
import 'package:vpn_app/services/apis/urls.dart';

class Api {
  static Future<void> getApiResponse() async {
    final response = await get(Uri.parse(baseUrl));
    final csvString = response.body.split("#")[1].replaceAll("*", "");
    List<List<dynamic>> csvList = const CsvToListConverter().convert(csvString);

    final header = csvList[0];
    for (int i = 1; i < csvList.length; ++i) {
      Map<String, dynamic> tempJson = {};
      for (int j = 0; j < header.length; ++j) {
        tempJson[header[j].toString()] = csvList[i][j];
      }
      //log(tempJson.toString());
      log(jsonEncode(tempJson));
    }

    // tempJson.addAll({(header[i]): (csvList[i][i])});
  }
}
