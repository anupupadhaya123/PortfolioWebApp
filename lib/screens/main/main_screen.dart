import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //hiding appbar in desktop

      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: ((context) =>
                    IconButton(onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }, icon: Icon(Icons.menu))),
              )),
      drawer: SideMenu(),
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              //Working on responsiveness
              //Now each taking 50%
              Expanded(
                  //Now this take 75%
                  //Not this take (2+7 = 9) so 2/9 = 0.22 means 22%
                  flex: 2,
                  child: SideMenu()),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                //It takes 7/9, means 78% width
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // our footer
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
