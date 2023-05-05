import 'package:booktickets/screens/search/airline_tickets.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SegmentedControl extends StatefulWidget {
  final String firstText;
  final String secondText;
  // final Widget? firstPage;
  // final Widget? secondPage;
  const SegmentedControl({
    Key? key,
    required this.firstText,
    required this.secondText,
    // required this.firstPage,
    // required this.secondPage,
  }) : super(key: key);

  @override
  State<SegmentedControl> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int _selectedIndex = 1;
  Widget? firstPage;
  // static final List<Widget> _widgetOption = <Widget>[
  //   const AirlineTickets(),
  // ];
  void main() {
    runApp(MaterialApp(
      home: AirlineTickets(),
    ));
  }
  // void _onitemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CustomSlidingSegmentedControl<int>(
            initialValue: _selectedIndex,
            children: {
              1: Text(widget.firstText),
              2: Text(widget.secondText),
              //3: Text('Paper'),
            },
            decoration: BoxDecoration(
              color: CupertinoColors.lightBackgroundGray,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 40,
            fixedWidth: 160,
            thumbDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInToLinear,
            onValueChanged: (value) async {
              setState(() {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const AirlineTickets()));
                
              });
            }),
      ),
    );
  }
}
