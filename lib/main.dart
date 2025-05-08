import 'package:flutter/material.dart';
import '../screens/select_location_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SelectLocationScreen.routeName,
      routes: {
        SelectLocationScreen.routeName: (context) => const SelectLocationScreen(),
      },
    );
  }
}
