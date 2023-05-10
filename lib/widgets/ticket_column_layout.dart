import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketColumntLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final TextStyle firstTextStyle;
  final TextStyle secondTextStyle;
  const TicketColumntLayout({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
    required this.firstTextStyle,
    required this.secondTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style:
                firstTextStyle), //Styles.headLineStyle3.copyWith(color: Colors.black)),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,
            style: secondTextStyle), // Styles.notBoldheadLineStyle4),
      ],
    );
  }
}
