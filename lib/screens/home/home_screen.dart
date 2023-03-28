import 'package:booktickets/screens/home/hotel_view.dart';
import 'package:booktickets/screens/home/tickets_view.dart';
import 'package:booktickets/utilities/app_info_list.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ready to travel?',
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            'Book Tickets',
                            style: Styles.headLineStyle,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/flight.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff4f6fd),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xffbfc205),
                        ),
                        Text(
                          'Search',
                          style: Styles.headLineStyle4,
                        ),
                      ],
                    ),
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Flights',
                        style: Styles.headLineStyle2,
                      ),
                      InkWell(
                        onTap: () {
                          print('You Tapped!!');
                        },
                        child: Text(
                          'View all',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList
                    .map((singlTicket) => TicketView(ticket: singlTicket))
                    .toList(),
              ),
            ),
            const Gap(15),
            Container(
              //padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hotels', style: Styles.headLineStyle2),
                  InkWell(
                    onTap: () {
                      print('You Tapped!!');
                    },
                    child: Text(
                      'View all',
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList
                    .map((singlHotel) => HotelView(hotel: singlHotel))
                    .toList(),
              ),
            ),
            const Gap(5),
          ],
        ),
      ),
    );
  }
}
