import 'package:booktickets/screens/profile/login_view.dart';
import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/list_items.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            child: Column(
              children: [
                const LoginView(),
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
    // color: Styles.bgColor,
  }
}
