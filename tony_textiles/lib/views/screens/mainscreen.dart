import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tony_textiles/controllers/mainscreen_provider.dart';
import 'package:tony_textiles/views/screens/cartpage.dart';
import 'package:tony_textiles/views/screens/homepage.dart';
import 'package:tony_textiles/views/screens/profilepage.dart';
import 'package:tony_textiles/views/screens/searchpage.dart';
import 'package:tony_textiles/views/shared/bottomNavBar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [
    const HomePage(),
    const SearchPage(),
    const HomePage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          // Body
          body: pageList[mainScreenNotifier.pageIndex],

          // Navigation bar
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}


