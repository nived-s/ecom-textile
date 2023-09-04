import 'package:flutter/material.dart';
import 'package:tony_textiles/views/shared/appstyle.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // use Scaffold also in order to provide material app widgets
      body: Center(
        child: Text(
          "MainScreen",
          style: appStyle(36, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
