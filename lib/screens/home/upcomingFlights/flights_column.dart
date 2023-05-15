import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/ticket_column_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FlightColumns extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const FlightColumns({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 1.0,
      height: AppLayout.getHeight(220),
      child: Container(
        color: Styles.transparentWight,
        // padding: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                color: Styles.transparentWight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TicketColumntLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: '${ticket['from']['code']}',
                          secondText: '${ticket['from']['name']}',
                          firstTextStyle: Styles.headLineStyle3
                              .copyWith(color: Styles.wightTextColor),
                          secondTextStyle: Styles.notBoldheadLineStyle4
                              .copyWith(color: Styles.grayColor),
                        ),
                        Icon(
                          Icons.compare_arrows,
                          color: Styles.wightTextColor,
                        ),
                        TicketColumntLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: '${ticket['to']['code']}',
                          secondText: '${ticket['to']['name']}',
                          firstTextStyle: Styles.headLineStyle3
                              .copyWith(color: Styles.wightTextColor),
                          secondTextStyle: Styles.notBoldheadLineStyle4
                              .copyWith(color: Styles.grayColor),
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text(
                      'Sat , 10 Jun - Sat , 17 Jun.1 adult. Economy',
                      style: Styles.notBoldheadLineStyle4
                          .copyWith(color: Styles.grayColor, fontSize: 11),
                    ),
                    Gap(AppLayout.getHeight(10)),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(1)),
              Container(
                color: Styles.transparentWight,
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TicketColumntLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: ticket['departureTime'],
                          secondText: ticket['date'],
                          firstTextStyle: Styles.headLineStyle3
                              .copyWith(color: Styles.wightTextColor),
                          secondTextStyle: Styles.notBoldheadLineStyle4
                              .copyWith(color: Styles.grayColor),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(ticket['hours'],
                                style: Styles.notBoldheadLineStyle4.copyWith(
                                    color: Styles.grayColor, fontSize: 12)),
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              color: Styles.wightTextColor,
                              size: 30,
                            ),
                            Text(ticket['stops'],
                                style: Styles.notBoldheadLineStyle4.copyWith(
                                    color: Styles.grayColor, fontSize: 12)),
                          ],
                        ),
                        TicketColumntLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: '8:50 Am',
                          secondText: 'STN.11 Jun',
                          firstTextStyle: Styles.headLineStyle3
                              .copyWith(color: Styles.wightTextColor),
                          secondTextStyle: Styles.notBoldheadLineStyle4
                              .copyWith(color: Styles.grayColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/letter-w-2.png',
                              width: 20,
                            ),
                            Gap(AppLayout.getWidth(10)),
                            Image.asset(
                              'assets/images/lion.png',
                              width: 20,
                            ),
                            Gap(AppLayout.getWidth(5)),
                            Text(
                              ticket['companies'],
                              style: Styles.notBoldheadLineStyle4.copyWith(
                                  fontSize: 10, color: Styles.wightTextColor),
                            ),
                          ],
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/baggage.png',
                                  width: 25,
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  'Baggage included: parsonal items',
                                  style: Styles.notBoldheadLineStyle4.copyWith(
                                      fontSize: 11,
                                      color: Styles.wightTextColor),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Total:',
                                  style: Styles.notBoldheadLineStyle4.copyWith(
                                      fontSize: 15,
                                      color: Styles.wightTextColor),
                                ),
                                Gap(AppLayout.getWidth(4)),
                                Text(
                                  ticket['total'],
                                  style: Styles.notBoldheadLineStyle4.copyWith(
                                      fontSize: 17,
                                      color: Styles.wightTextColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
