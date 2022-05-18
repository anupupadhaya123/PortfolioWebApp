import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/home/components/highLight.dart';
import 'package:flutter_profile/screens/home/components/homeBanner.dart';
import 'package:flutter_profile/screens/home/components/my_project.dart';
import 'package:flutter_profile/screens/home/components/recomendations.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(), 
        HighLighInfo(), 
        MyProjects(), 
        Recommendations(),
        
        // fOOTER PURPOSE
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Beta Version - Developed by Anup Upadhaya", style: Theme.of(context).textTheme.subtitle2,),
           
              ],
            ),
            SizedBox(
              height: defaultPadding/2,
            )
          ],
        )
        ],

    );
  }
}

