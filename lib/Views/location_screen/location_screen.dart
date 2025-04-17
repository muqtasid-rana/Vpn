import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vpn_app/Views/location_screen/widgets/location_card.dart';
import 'package:vpn_app/constants/colors.dart';
import 'package:vpn_app/services/providers/location_provider.dart';
import 'package:vpn_app/widgets/custom_appbar.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List countries = [];
  List flags = [];

  @override
  void initState() {
    super.initState();
    gettingServers();
  }

  void gettingServers() async {
    final locationProvider =
        Provider.of<LocationProvider>(context, listen: false);
    await locationProvider.getCountriesData();

    if (mounted) {
      setState(() {
        countries = locationProvider.countryList;
        flags = locationProvider.flagList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final locationProvider = Provider.of<LocationProvider>(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: CustomAppbar(text: "Vpn Servers"),
      body: locationProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : showServers(context, countries),
    );
  }
}

Widget showServers(context, List countries) {
  final locationProvider = Provider.of<LocationProvider>(context);
  return ListView.builder(
    itemCount: countries.length,
    itemBuilder: (context, index) {
      return LocationCard(
        countryName: locationProvider.countryList[index],
        flag: locationProvider.flagList[index],
        onTap: (value) {},
      );
    },
  );
}
