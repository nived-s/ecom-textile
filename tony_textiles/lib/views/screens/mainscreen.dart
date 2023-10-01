import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:tony_textiles/controllers/mainscreen_provider.dart';
import 'package:tony_textiles/views/screens/cartpage.dart';
import 'package:tony_textiles/views/screens/homepage.dart';
import 'package:tony_textiles/views/screens/profilepage.dart';
import 'package:tony_textiles/views/screens/searchpage.dart';
import 'package:tony_textiles/views/shared/appstyle.dart';
import 'package:tony_textiles/views/shared/botomNavBar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          // Body
          body: pageList[mainScreenNotifier.pageIndex],

          // Navigation bar
          bottomNavigationBar: SafeArea(
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  botomNavBar(
                    icon: Ionicons.home,
                    onTap: () {
                      mainScreenNotifier.pageIndex = 0;
                    },
                  ),
                  botomNavBar(
                    icon: Ionicons.search,
                    onTap: () {
                      mainScreenNotifier.pageIndex = 1;
                    },
                  ),
                  botomNavBar(
                    icon: Ionicons.add,
                    onTap: () {
                      mainScreenNotifier.pageIndex = 2;
                    },
                  ),
                  botomNavBar(
                    icon: Ionicons.cart,
                    onTap: () {
                      mainScreenNotifier.pageIndex = 3;
                    },
                  ),
                  botomNavBar(
                    icon: Ionicons.person,
                    onTap: () {
                      mainScreenNotifier.pageIndex = 4;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
