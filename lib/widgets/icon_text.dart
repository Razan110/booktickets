import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilities/styles/app_layout.dart';

class AppIcons extends StatelessWidget {
  final String contanierText;
  final IconData icon;
  const AppIcons({Key? key, required this.contanierText, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(20),
        vertical: AppLayout.getHeight(7),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Gap(AppLayout.getWidth(4)),
          Icon(
            icon,
            color: Styles.grayColor,
          ),
          Gap(AppLayout.getWidth(10)),
          Text(contanierText),
        ],
      ),
    );
  }
}
