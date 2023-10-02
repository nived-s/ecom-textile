import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:tony_textiles/controllers/mainscreen_provider.dart';
import 'package:tony_textiles/views/shared/botomNavBar_widget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
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
                  icon: mainScreenNotifier.pageIndex == 0
                      ? Ionicons.home
                      : Ionicons.home_outline,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 0;
                  },
                ),
                botomNavBar(
                  icon: mainScreenNotifier.pageIndex == 1
                      ? Ionicons.search
                      : Ionicons.search_outline,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 1;
                  },
                ),
                botomNavBar(
                  icon: mainScreenNotifier.pageIndex == 2
                      ? Ionicons.add_circle
                      : Ionicons.add_circle_outline,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 2;
                  },
                ),
                botomNavBar(
                  icon: mainScreenNotifier.pageIndex == 3
                      ? Ionicons.cart
                      : Ionicons.cart_outline,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 3;
                  },
                ),
                botomNavBar(
                  icon: mainScreenNotifier.pageIndex == 4
                      ? Ionicons.person
                      : Ionicons.person_outline,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 4;
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
