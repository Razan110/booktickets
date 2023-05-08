import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchBottom extends StatefulWidget {
  const SwitchBottom({super.key});

  @override
  State<SwitchBottom> createState() => _SwitchBottomState();
}

class _SwitchBottomState extends State<SwitchBottom> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Text(
        //   'Direct flights only',
        //   style: Styles.headLineStyle4.copyWith(color: Colors.black),
        // ),
        FlutterSwitch(
          width: AppLayout.getWidth(60),
          height: AppLayout.getHeight(30),
          toggleSize: 20.0,
          value: status,
          borderRadius: 30.0,
          padding: 2.0,
          toggleColor: Colors.black12,
          switchBorder: Border.all(
            color: Colors.black,
            width: AppLayout.getWidth(1),
          ),
          toggleBorder: Border.all(
            color: Styles.lightContainer,
            width: AppLayout.getWidth(10),
          ),
          activeColor: Styles.blue,
          inactiveColor: Styles.grayColor,
          onToggle: (val) {
            setState(
              () {
                status = val;
              },
            );
          },
        ),
      ],
    );
  }
}
