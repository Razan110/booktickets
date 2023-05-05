import 'package:booktickets/screens/search/hotel_container.dart';
import 'package:booktickets/screens/search/airline_tickets.dart';
import 'package:booktickets/utilities/app_info_list.dart';
import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/search_more_forU.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _showHotelWidghet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Styles.tranColor,
        ),
      ),
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Column(
            children: [
              Stack(
                children: [
                  // const Text('Tap to see stays search'),
                  //Gap(AppLayout.getHeight(10)),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 100,
                    ),
                    child: const AirlineTickets(),
                  ),
                  if (!_showHotelWidghet)
                    Container(
                      padding: const EdgeInsets.only(top: 100),
                      child: const HotelContainer(),
                    ),
                  // Gap(AppLayout.getHeight(10)),
                  // SizedBox(height: 10),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.orangeColor,
                      fixedSize: const Size(400, 50),
                    ),
                    child: Text(
                      _showHotelWidghet
                          ? 'Tap to search hotels'
                          : 'Arline Tickets',
                      style: Styles.headLineStyle.copyWith(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        _showHotelWidghet = !_showHotelWidghet;
                      });
                    },
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(30)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More for you',
                    style: Styles.headLineStyle2,
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Row(
                    children: moreForUList
                        .map((moreForU) => MoreForYou(moreForU: moreForU))
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
