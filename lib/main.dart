import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vpn_app/Views/homescreen/HomeScreen.dart';
import 'package:vpn_app/services/providers/location_provider.dart';
import 'package:vpn_app/services/providers/vpn_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VpnProvider>(create: (_) => VpnProvider()),
        ChangeNotifierProvider<LocationProvider>(
            create: (_) => LocationProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: HomeScreen(),
      ),
    );
  }
}
