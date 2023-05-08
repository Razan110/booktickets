import 'package:booktickets/utilities/styles/app_layout.dart';
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
              backgroundColor: Styles.darkGrayColor,
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
                backgroundColor: Styles.lightContainer,
                //elevates modal bottom screen
                elevation: 10,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                  ),
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
              style:
                  Styles.headLineStyle2.copyWith(color: Styles.wightTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
