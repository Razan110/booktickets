import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TextFieldContainer extends StatelessWidget {
  final String hintTextC;
  final IconData? icon;
  final Color? iconColor;
  final TextEditingController? controller;
  final bool? isColor;
  const TextFieldContainer(
      {Key? key,
      required this.hintTextC,
      required this.icon,
      this.iconColor,
      required this.controller,
      required this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 16),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Gap(AppLayout.getWidth(25)),
          Expanded(
            child: TextField(
              style: isColor == null
                  ? Styles.notBoldheadLineStyle4.copyWith(color: Styles.bgColor)
                  : Styles.notBoldheadLineStyle4
                      .copyWith(color: Styles.wightColor),
              controller: controller,
              decoration: InputDecoration(
                hintText: hintTextC,
                fillColor: Styles.wightTextColor,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Styles.grayColor,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Styles.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
