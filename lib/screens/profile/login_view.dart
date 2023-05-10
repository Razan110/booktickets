import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Styles.grayColor),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            decoration: BoxDecoration(color: Styles.darkGrayColor),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(10)),
                Image.asset('assets/images/user.png', scale: 9),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to manage your trips. You\'ll also unluck genius\ndiscounts at great properties worldwide.',
                      style: Styles.textStyleSmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Column(
                    children: [
                      Gap(AppLayout.getHeight(10)),
                      TextField(
                        controller: _email,
                        decoration: InputDecoration(
                          hintText: 'Email adress',
                          hintStyle: Styles.headLineStyle4
                              .copyWith(color: Styles.wightTextColor),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF989696),
                            ),
                          ),
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      TextField(
                        controller: _password,
                        decoration: InputDecoration(
                          labelStyle: Styles.textStyle
                              .copyWith(color: Styles.wightTextColor),
                          hintText: 'Password',
                          hintStyle: Styles.headLineStyle4
                              .copyWith(color: Styles.wightTextColor),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF989696),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            //<-- SEE HERE
                            borderSide:
                                BorderSide(width: 3, color: Colors.redAccent),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: null,
                            ),
                            onPressed: () async {},
                            child: Text(
                              'Already has an account?',
                              style:
                                  Styles.textStyleSmall.copyWith(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Styles.blue,
                            fixedSize: const Size(100, 15)),
                        onPressed: () async {},
                        child: Text(
                          'Sign In',
                          style: Styles.textStyleSmall,
                        ),
                      ),
                      Gap(AppLayout.getHeight(10)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
