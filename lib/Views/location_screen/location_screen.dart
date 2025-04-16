import 'package:flutter/material.dart';
import 'package:vpn_app/constants/colors.dart';
import 'package:vpn_app/services/apis/api.dart';
import 'package:vpn_app/widgets/custom_appbar.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Api.getApiResponse();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: CustomAppbar(text: "Vpn Servers"),
      body: Column(),
    );
  }
}
