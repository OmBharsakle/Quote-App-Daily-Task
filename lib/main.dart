import 'package:flutter/material.dart';

import 'Screens/Home/home.dart';

void main() {
  runApp(const Random_Quotes());
}

class Random_Quotes extends StatefulWidget {
  const Random_Quotes({super.key});

  @override
  State<Random_Quotes> createState() => _Random_QuotesState();
}

class _Random_QuotesState extends State<Random_Quotes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
