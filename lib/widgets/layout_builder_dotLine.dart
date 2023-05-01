import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:flutter/material.dart';

class DotLine extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const DotLine({Key? key, this.isColor, required this.sections})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: AppLayout.getWidth(10),
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: isColor == null ? Colors.white : Color(0xFFDEDDDD)),
              ),
            ),
          ),
        );
      },
    );
  }
}
