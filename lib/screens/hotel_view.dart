import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(top: 5, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Styles.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          const Gap(30),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.grayColor),
          ),
          const Gap(10),
          Text(
            hotel['destinatin'],
            style: Styles.textStyleSmall.copyWith(color: Styles.lightGrayColor),
          ),
          const Gap(10),
          Text(
            "${hotel['price']}\$ per night",
            style: Styles.headLineStyle2.copyWith(color: Styles.lightGrayColor),
          ),
        ],
      ),
    );
  }
}
