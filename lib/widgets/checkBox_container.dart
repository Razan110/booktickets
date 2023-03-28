import 'package:booktickets/utilities/app_info_list.dart';
import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
//import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CheckBoxContainer extends StatefulWidget {
  const CheckBoxContainer({super.key});

  @override
  State<CheckBoxContainer> createState() => _CheckBoxContainerState();
}

class _CheckBoxContainerState extends State<CheckBoxContainer> {
  bool firstItme = false;
  bool secItme = false;
  bool thtItme = false;
  bool selected = true;
  void checked(bool val) {
    setState(() {
      selected = val;
    });
  }

  var currentValue;

  int _itemCountAdults = 0;
  int _itemCountChildren = 0;
  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Styles.contanierBg,
      ),
      child: Column(
        children: [
          //first Row
          Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 2,
                              color: Styles.orangeColor,
                              style: BorderStyle.solid), //BorderSide
                        ),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            value: firstItme,
                            shape: const CircleBorder(),
                            onChanged: (bool? val) {
                              setState(() {
                                firstItme = val!;
                              });
                            },
                            activeColor: Styles.checkBoxColor,
                          ),
                          const Text('Round-trip'),
                          Checkbox(
                            value: secItme,
                            shape: const CircleBorder(),
                            onChanged: (val) {
                              setState(() {
                                secItme = val!;
                              });
                            },
                            activeColor: Styles.checkBoxColor,
                          ),
                          const Text('One-way'),
                          Checkbox(
                            value: thtItme,
                            shape: const CircleBorder(),
                            onChanged: (val) {
                              setState(() {
                                thtItme = val!;
                              });
                            },
                            activeColor: Styles.checkBoxColor,
                          ),
                          const Text('Multi-city  '),
                        ],
                      )),
                ],
              ),
              //
              //second column
              Container(
                margin: const EdgeInsets.only(top: 10, left: 16),
                child: Row(
                  children: [
                    const Icon(
                      Icons.flight_takeoff,
                    ),
                    Gap(AppLayout.getWidth(25)),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Where from?',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Styles.grayColor,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Styles.orangeColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Date
              Gap(AppLayout.getWidth(5)),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 16),
                child: Row(
                  children: [
                    const Icon(
                      Icons.flight_land_outlined,
                    ),
                    Gap(AppLayout.getWidth(25)),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Where to?',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Styles.grayColor,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Styles.orangeColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10, left: 16),
                child: Row(
                  children: [
                    Text('Date',
                        style: Styles.headLineStyle4
                            .copyWith(color: Colors.black)),
                    Gap(AppLayout.getWidth(25)),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'DD-MM-YYY',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Styles.grayColor,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Styles.orangeColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 16),
                child: Row(
                  children: [
                    DropdownButton<String>(
                      dropdownColor: Styles.contanierBg,
                      hint: const Text('Cabin class'),
                      value: currentValue,
                      items: cabin.map((cabin) {
                        return DropdownMenuItem<String>(
                          value: cabin,
                          child: Text(cabin),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          currentValue = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(5)),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 16),
                child: Row(
                  children: [
                    Text(
                      'Travillar:',
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 35, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Adults count'),
                    // Gap(AppLayout.getWidth(80)),
                    Text('Children count'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 25, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        _itemCountAdults == 0
                            ? IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () =>
                                    setState(() => _itemCountAdults--),
                              )
                            : Container(),
                        Text(_itemCountAdults.toString()),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () => setState(() => _itemCountAdults++),
                        ),
                      ],
                    ),
                    //Gap(AppLayout.getWidth(60)),
                    Row(
                      children: <Widget>[
                        _itemCountChildren == 0
                            ? IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () =>
                                    setState(() => _itemCountChildren--),
                              )
                            : Container(),
                        Text(_itemCountChildren.toString()),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () => setState(() => _itemCountChildren++),
                        ),
                      ],
                    ),

                    //G
                  ],
                ),
              ),
              Gap(AppLayout.getWidth(5)),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text(
                      'Search',
                      style: Styles.headLineStyle
                          .copyWith(color: Styles.orangeColor),
                    ),
                  ),
                  //const SizedBox(height: 8.0, width: 80),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}