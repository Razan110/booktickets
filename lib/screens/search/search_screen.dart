import 'package:booktickets/utilities/app_info_list.dart';
import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/checkBox_container.dart';
import 'package:booktickets/widgets/search_more_forU.dart';
import 'package:booktickets/widgets/switch_bottom.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Styles.contanierBg,
              ),
              child: Row(
                children: [
                  //airLine tickets
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      ),
                      color: Colors.white,
                    ),
                    child: const Center(child: Text('Airline Tickets')),
                  ),
                  //

                  //Hotels
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppLayout.getHeight(21)),
                        bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      ),
                      color: Styles.contanierBg,
                    ),
                    child: const Center(child: Text('Hotels')),
                  ),

                  //
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Styles.orangeColor,
            ),
            child: Column(
              children: const [
                CheckBoxContainer(),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          const SwitchBottom(),
          Gap(AppLayout.getHeight(30)),
          Text(
            'More for you',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
              child: Row(
            children: moreForUList
                .map((moreForU) => MoreForYou(moreForU: moreForU))
                .toList(),
          )),
        ],
      ),
    );
  }
}
