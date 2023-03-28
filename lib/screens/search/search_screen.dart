import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/checkBox_container.dart';
import 'package:booktickets/widgets/icon_text.dart';
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
          // Text(
          //   'What are\n Looking for?',
          //   style: Styles.headLineStyle.copyWith(fontSize: 35),
          // ),
          // Gap(AppLayout.getHeight(20)),
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
          // //Depature Container
          // const AppIcons(
          //   contanierText: 'Depature',
          //   icon: Icons.flight_takeoff,
          // ),
          // //
          // Gap(AppLayout.getHeight(15)),
          // //Arrival Container
          // const AppIcons(
          //   contanierText: 'Arrival',
          //   icon: Icons.flight_land_rounded,
          // ),
          // //
          const CheckBoxContainer(),
        ],
      ),
    );
  }
}