import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';

class HotelsSearch extends StatelessWidget {
  const HotelsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          title: const Text('Hotels'),
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
      body: Container(
        color: Styles.bgColor,
        padding: const EdgeInsets.only(left: 15, right: 15),
      ),
    );
  }
}
