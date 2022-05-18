import 'package:flutter/material.dart';
import 'package:flutter_profile/animations/animatedLinearBar.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/side_menu.dart';


class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearBar(percentage: 0.7, label: "Dart", ),
        AnimatedLinearBar(percentage: 0.5, label: "Java", ),
        AnimatedLinearBar(percentage: 0.6, label: "HTML and CSS", ),
        AnimatedLinearBar(percentage: 0.5, label: "Javascript", ),
        AnimatedLinearBar(percentage: 0.8, label: "OOPs", ),
      ],
    );
  }
}