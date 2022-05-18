import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/animations/skill_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
         Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        "Skills",
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ),
    //Now we need to animate it
    Row(
      children: [
        Expanded(
          child: CircularProgressIndicators(
            percentage: 0.75,
            label: "Flutter",
          ),
        ), 
        SizedBox(width: defaultPadding,),
        Expanded(
          child: CircularProgressIndicators(
            percentage: 0.6,
            label: "API",
          ),
        ), 
        SizedBox(width: defaultPadding,),
        Expanded(
          child: CircularProgressIndicators(
            percentage: 0.6,
            label: "Firebase",
          ),
        ),
       
      ],
    ),
      ],
    );
  }
}

