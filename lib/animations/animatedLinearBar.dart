import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AnimatedLinearBar extends StatelessWidget {
  const AnimatedLinearBar({
    Key? key, required this.percentage, required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: defaultPadding/2),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: defaultDuration,
          builder: ((context, double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(label, style: TextStyle(color: Colors.white),),
                  Text((value * 100).toInt().toString() + "%"),
                ],
              ),
              SizedBox(height: defaultPadding/2,),
              LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
            ],
          ))),
    );
  }
}
