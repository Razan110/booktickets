import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/screens/search/airline_container.dart';
import 'package:booktickets/widgets/switch_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class AirlineTickets extends StatelessWidget {
  const AirlineTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        //color: Styles.orangeColor,
      ),
      child: Column(
        children: [
          const CheckBoxContainer(),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Direct flights only',
                style: Styles.headLineStyle4.copyWith(color: Colors.black),
              ),
              const SwitchBottom(),
            ],
          ),
        ],
      ),
    );
  }
}
