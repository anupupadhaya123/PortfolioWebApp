import 'package:flutter/material.dart';
import 'package:flutter_profile/animations/animated_counter.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';


class HighLighInfo extends StatelessWidget {
  const HighLighInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child:Responsive.isMobileLarge(context)?Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Highlight(
            counter: AnimatedCounter(
              value: 70,
              text: "K+",
            ),
            label: "Followers",
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 20,
              text: "+",
            ),
            label: "Projects",
          ),
            ],
          ),
          SizedBox(height: defaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                 Highlight(
            counter: AnimatedCounter(
              value: 6,
              text: "+",
            ),
            label: "Month Experience",
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 3,
              text: "+",
            ),
            label: "Year of Study",
          ),
            ],
          )
          
        ],
      ): Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Highlight(
            counter: AnimatedCounter(
              value: 70,
              text: "K+",
            ),
            label: "Followers",
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 20,
              text: "+",
            ),
            label: "Projects",
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 6,
              text: "+",
            ),
            label: "Month Experience",
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 3,
              text: "+",
            ),
            label: "Year of Study",
          ),
        ],
      ),
    );
  }
}

class Highlight extends StatelessWidget {
  const Highlight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Making animated Text
        counter,

        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}

