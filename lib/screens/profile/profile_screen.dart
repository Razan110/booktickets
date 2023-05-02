import 'package:booktickets/screens/profile/login_view.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(color: Styles.bgColor, gradient: null),
      child: const LoginView(),
    );
  }
}
