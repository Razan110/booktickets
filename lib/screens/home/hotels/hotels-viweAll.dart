import 'package:booktickets/screens/home/hotels/hotels_search.dart';
import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelsViewAll extends StatefulWidget {
  const HotelsViewAll({super.key});

  @override
  State<HotelsViewAll> createState() => _HotelsViewAllState();
}

class _HotelsViewAllState extends State<HotelsViewAll> {
  late final TextEditingController _destination;
  late final TextEditingController _date;
  late final TextEditingController _guests;
  @override
  void initState() {
    _destination = TextEditingController();
    _date = TextEditingController();
    _guests = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _destination.dispose();
    _date.dispose();
    _guests.dispose();
    super.dispose();
  }

  void textFieldInputs() {
    switch (_destination) {
      //case 'london':
    }
  }

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
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    TextFieldContainer(
                      hintTextC: 'Enter destination',
                      icon: Icons.pin_drop_outlined,
                      iconColor: Styles.wightColor,
                      controller: _destination,
                      isColor: true,
                    ),
                    Gap(AppLayout.getWidth(10)),
                    TextFieldContainer(
                      hintTextC: 'Select dates',
                      icon: Icons.calendar_month_outlined,
                      iconColor: Styles.wightColor,
                      controller: _date,
                      isColor: true,
                    ),
                    Gap(AppLayout.getWidth(10)),
                    TextFieldContainer(
                      hintTextC: 'Guests',
                      icon: Icons.person_add_alt_sharp,
                      iconColor: Styles.wightColor,
                      controller: _guests,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HotelsSearch(),
                    ),
                  );
                },
                child: Container(
                  //color: Styles.darkGrayColor,
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.only(
                      left: 140, right: 140, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Styles.darkGrayColor,
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    'Search',
                    style: Styles.headLineStyle3
                        .copyWith(color: Styles.lightBlue, fontSize: 20),
                  ),
                ),
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
