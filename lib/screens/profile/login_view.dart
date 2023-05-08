import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/bottom_sheet.dart';
import 'package:booktickets/widgets/list_items.dart';
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Styles.darkGrayColor,
        ),
      ),
      body: ListView(
        children: [
          Container(
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
                                    style: Styles.textStyleSmall
                                        .copyWith(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.black,
                                  fixedSize: const Size(100, 15)),
                              onPressed: () async {},
                              child: const Text('Sign In'),
                            ),
                            Gap(AppLayout.getHeight(10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(5)),
                const ListItems(
                  imgePath: 'assets/images/wallet.png',
                  text: 'Rewards & Wallet',
                ),
                const ListItems(
                  imgePath: 'assets/images/g.png',
                  text: 'Genius loyalty program',
                ),
                const ListItems(
                  imgePath: 'assets/images/like.png',
                  text: 'Saved',
                ),
                const ListItems(
                  imgePath: 'assets/images/event.png',
                  text: 'Bookings',
                ),
                Gap(AppLayout.getHeight(15)),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Help and support',
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(15)),
                const ListItems(
                  imgePath: 'assets/images/customer-service.png',
                  text: 'Contact Customer Cervice',
                ),
                const ListItems(
                  imgePath: 'assets/images/shield.png',
                  text: 'Saftey Resource Center',
                ),
                const ListItems(
                  imgePath: 'assets/images/handshake.png',
                  text: 'Dispute resolution',
                ),
                Gap(AppLayout.getHeight(15)),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Discover',
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(15)),
                const ListItems(
                  imgePath: 'assets/images/discount.png',
                  text: 'Deals',
                ),
                const ListItems(
                  imgePath: 'assets/images/newspaper.png',
                  text: 'Travel articles',
                ),
                const ListItems(
                  imgePath: 'assets/images/group.png',
                  text: 'Travel communities',
                ),
                const ListItems(
                  imgePath: 'assets/images/taxi-sign.png',
                  text: 'Airport taxis',
                ),
                Gap(AppLayout.getHeight(15)),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Settings and legal',
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(15)),
                const ListItems(
                  imgePath: 'assets/images/settings.png',
                  text: 'Settings',
                ),
                const ListItems(
                  imgePath: 'assets/images/balance.png',
                  text: 'Legal',
                ),
                Gap(AppLayout.getHeight(15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
