import 'package:booktickets/utilities/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebsiteLuncher extends StatelessWidget {
  final String url;
  final String buttonText;
  const WebsiteLuncher({Key? key, required this.url, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // launchUrlString(url);
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        child: Text(
          buttonText,
          style: Styles.textStyleSmall.copyWith(color: Styles.links),
        ),
      ),
    );
  }
}
