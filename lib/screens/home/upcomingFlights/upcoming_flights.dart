import 'package:booktickets/utilities/app_info_list.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/screens/home/upcomingFlights/flights_column.dart';
import 'package:flutter/material.dart';

class UpcomingFlights extends StatelessWidget {
  const UpcomingFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          title: const Text('Upcoming Flights'),
          elevation: 0,
          backgroundColor: Styles.darkGrayColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Styles.wightColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),

      // body:
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left: 1),
        child: Column(
          children: ticketList
              .map(
                (ticket) => FlightColumns(ticket: ticket),
              )
              .toList(),
        ),
      ),
    );
  }
}
