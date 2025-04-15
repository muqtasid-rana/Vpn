import 'package:http/http.dart';
import 'package:vpn_app/services/apis/urls.dart';

class Api {
  static Future<void> getApiResponse() async {
    final response = await get(Uri.parse(baseUrl));
  }
}
