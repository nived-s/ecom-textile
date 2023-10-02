import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class botomNavBar extends StatelessWidget {
  const botomNavBar({
    super.key,
    this.icon,
    this.onTap
  });
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 46,
        width: 36,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
