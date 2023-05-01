import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_dotLine.dart';
import 'package:booktickets/widgets/thich_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.8,
      height: AppLayout.getHeight(161),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            //**** show the blue part of the ticket ****
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${ticket['from']['code']}',
                        style: isColor == null
                            ? Styles.textStyleSmall
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3.copyWith(
                                color: Colors.black,
                              ),
                      ),
                      const Spacer(),
                      const ThichContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  // print(
                                  //     'the width is ${constraints.constrainWidth()}');
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: AppLayout.getWidth(3),
                                        height: AppLayout.getHeight(1),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Styles.orangeColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Styles.orangeColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThichContainer(
                        isColor: true,
                      ),
                      const Spacer(),
                      Text(
                        '${ticket['to']['code']}',
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3.copyWith(
                                color: Colors.black,
                              ),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${ticket['from']['name']}',
                        style: isColor == null
                            ? Styles.textStyleSmall.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3,
                      ),
                      Text(
                        ticket['hours'],
                        style: isColor == null
                            ? Styles.textStyleSmall.copyWith(
                                color: Colors.white,
                              )
                            : Styles.textStyleSmall
                                .copyWith(color: Colors.grey),
                      ),
                      Text(
                        '${ticket['to']['name']}',
                        style: isColor == null
                            ? Styles.textStyleSmall.copyWith(
                                color: Colors.white,
                              )
                            : Styles.textStyleSmall.copyWith(
                                color: Colors.grey,
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //**** show the red part of the ticket ****
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Colors.white : Colors.grey,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: DotLine(
                        sections: 15,
                        isColor: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Colors.white : Colors.grey,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 16),
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor == null
                                ? Styles.textStyleSmall
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                          ),
                          const Gap(3),
                          Text(
                            'Date',
                            style: isColor == null
                                ? Styles.textStyleSmall.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.textStyleSmall
                                    .copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departureTime'],
                            style: isColor == null
                                ? Styles.textStyleSmall
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                          ),
                          const Gap(3),
                          Text(
                            'Departure time',
                            style: isColor == null
                                ? Styles.textStyleSmall.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.textStyleSmall
                                    .copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('${ticket['number']}',
                              style: isColor == null
                                  ? Styles.textStyleSmall
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                          const Gap(3),
                          Text(
                            'Number',
                            style: isColor == null
                                ? Styles.textStyleSmall.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.textStyleSmall
                                    .copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
