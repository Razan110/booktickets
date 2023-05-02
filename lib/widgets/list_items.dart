import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListItems extends StatelessWidget {
  final String imgePath;
  final String text;
  const ListItems({Key? key, required this.imgePath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imgePath,
                scale: 25,
              ),
              Gap(AppLayout.getWidth(5)),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () async {},
                child: Text(
                  text,
                  style: Styles.listItems,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
