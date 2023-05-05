import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';

class BottomSheetB extends StatelessWidget {
  final String bottomSheetText;
  final String bottomSheetTextbuilder;
  final double bottomSheetWidth;
  final double bottomSheetHight;
  final double fontSize;
  //final Styles textStyle;

  const BottomSheetB({
    Key? key,
    required this.bottomSheetText,
    required this.bottomSheetWidth,
    required this.bottomSheetHight,
    required this.bottomSheetTextbuilder,
    required this.fontSize,
    // required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Styles.bgColor,
              padding: EdgeInsets.symmetric(
                horizontal: bottomSheetHight,
                vertical: bottomSheetWidth,
              ),
              textStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                shadows: null,
              ),
            ),
            onPressed: () {
              // adding some properties
              showModalBottomSheet(
                context: context,
                // color is applied to main screen when modal bottom screen is displayed
                // barrierColor: Color.fromARGB(255, 6, 58, 33),
                //background color for modal bottom screen
                backgroundColor: Styles.contanierBg,
                //elevates modal bottom screen
                elevation: 10,
                // gives rounded corner to modal bottom screen
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                builder: (BuildContext context) {
                  // UDE : SizedBox instead of Container for whitespaces
                  return SizedBox(
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(bottomSheetTextbuilder),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text(
              bottomSheetText,
              style: Styles.headLineStyle2.copyWith(color: Styles.orangeColor),
            ),
          ),
        ],
      ),
    );
  }
}
