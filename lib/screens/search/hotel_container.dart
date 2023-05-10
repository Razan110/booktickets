import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/bottom_sheet.dart';
import 'package:booktickets/widgets/switch_bottom.dart';
import 'package:booktickets/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
//import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class HotelContainer extends StatefulWidget {
  const HotelContainer({super.key});

  @override
  State<HotelContainer> createState() => _HotelContainerState();
}

class _HotelContainerState extends State<HotelContainer> {
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

  int _itemCountAdults = 1;
  int _itemCountChildren = 0;
  @override
  Widget build(BuildContext context) {
    bool status = true;
    // final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(left: 1, right: 1, top: 1, bottom: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
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
                            color: Styles.blue,
                            style: BorderStyle.solid,
                          ), //BorderSide
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
                          const Text('Hotels'),
                          Gap(AppLayout.getWidth(20)),
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
                          const Text('Motel'),
                          Gap(AppLayout.getWidth(25)),
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
                          const Text('Airbnb'),
                          Gap(AppLayout.getWidth(41)),
                        ],
                      )),
                ],
              ),
              //
              //second column

              const TextFieldContainer(
                hintTextC: 'City',
                icon: Icons.location_city_outlined,
                controller: null,
              ),

              Gap(AppLayout.getHeight(5)),

              Container(
                margin: const EdgeInsets.only(top: 10, left: 16),
                child: Row(
                  children: [
                    Text(
                      'Arrival Date:',
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.black),
                    ),
                    Gap(AppLayout.getHeight(15)),
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
                              color: Styles.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      'Nights:',
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.black),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Number',
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
                    Gap(AppLayout.getHeight(20)),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cleaning service',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black),
                        ),
                        const SwitchBottom(),
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Including breakfast',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black),
                        ),
                        const SwitchBottom(),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 16),
                child: Row(
                  children: [
                    Text(
                      'Gustes:',
                      style: Styles.headLineStyle3.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 46, right: 30),
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
                margin: const EdgeInsets.only(top: 10, left: 40, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        _itemCountAdults != 1 || _itemCountAdults == 1
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
                        _itemCountChildren != 0 || _itemCountChildren == 0
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
              Gap(AppLayout.getHeight(16)),
              const BottomSheetB(
                bottomSheetText: 'Find hotels',
                bottomSheetHight: 113.5,
                bottomSheetWidth: 15,
                bottomSheetTextbuilder: 'Louding...',
                fontSize: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
