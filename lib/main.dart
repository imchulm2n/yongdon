import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:yongdon/screens/main_screen.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Nanum_Sungsil",
        colorSchemeSeed: Colors.blueAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
