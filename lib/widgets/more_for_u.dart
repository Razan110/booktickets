import 'package:booktickets/utilities/styles/app_layout.dart';
import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:booktickets/widgets/website_luncher.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MoreForYou extends StatelessWidget {
  final Map<String, dynamic> moreForU;
  const MoreForYou({Key? key, required this.moreForU}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      //width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            color: Styles.grayColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: AppLayout.getWidth(165),
                      height: AppLayout.getHeight(300),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/moreforu.jpeg'),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 5),
                      child: Text(
                        moreForU['DisctiptionHeadLin'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 5),
                      child: Text(
                        moreForU['Disctiption'],
                        style: Styles.textStyleSmall.copyWith(
                            color: const Color(0xFF6C6B6B), fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(0)),
                Container(
                  padding: const EdgeInsets.only(left: 90, right: 5),
                  child: WebsiteLuncher(
                    buttonText: 'see more..',
                    url: moreForU['Link'],
                  ),
                ),
                Gap(AppLayout.getHeight(1)),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                color: Styles.grayColor,
                width: AppLayout.getWidth(160),
                height: AppLayout.getHeight(177),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: AppLayout.getWidth(160),
                          height: AppLayout.getHeight(110),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/moreforu2.jpeg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Row(
                      children: [
                        Gap(AppLayout.getHeight(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                moreForU['DisctiptionHeadLin2'],
                                style: Styles.headLineStyle3.copyWith(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(2)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15, right: 5),
                          child: Text(
                            moreForU['Disctiption2'],
                            style: Styles.textStyleSmall.copyWith(
                                color: const Color.fromARGB(255, 108, 107, 107),
                                fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 70, right: 5),
                      child: WebsiteLuncher(
                        buttonText: 'see more..',
                        url: moreForU['Link2'],
                      ),
                    ),
                  ],
                ),
              ),
              //container2
              Gap(AppLayout.getHeight(15)),
              Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(1),
                // ),
                color: Styles.grayColor,
                width: AppLayout.getWidth(160),
                height: AppLayout.getHeight(177),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: AppLayout.getWidth(160),
                                height: AppLayout.getHeight(110),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/moreforu3.jpeg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Row(
                            children: [
                              Gap(AppLayout.getHeight(10)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Text(
                                      moreForU['DisctiptionHeadLin3'],
                                      style: Styles.headLineStyle4.copyWith(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Gap(AppLayout.getHeight(2)),
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      moreForU['Disctiption3'],
                                      style: Styles.textStyleSmall.copyWith(
                                          color: const Color.fromARGB(
                                              255, 108, 107, 107),
                                          fontSize: 12),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 80, right: 3),
                                      child: WebsiteLuncher(
                                        buttonText: 'see more..',
                                        url: moreForU['Link3'],
                                      ),
                                    ),
                                    Gap(AppLayout.getHeight(2)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
