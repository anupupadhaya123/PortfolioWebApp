import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/coding.dart';
import 'package:flutter_profile/screens/main/components/knowledges.dart';
import 'package:flutter_profile/screens/main/components/my_info.dart';
import 'package:flutter_profile/animations/skill_indicator.dart';
import 'package:flutter_profile/screens/main/components/pdfViewer.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/link.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  @override
  Widget build(BuildContext context) {


    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: "Nepal",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Kathmandu",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "22",
                  ),
                   AreaInfoText(
                    title: "College",
                    text: "PCPS",
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  TextButton(
                    
                      onPressed: ()  {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CVviewer()));
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding / 2),
                    color: Color(0xFF2424E),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Spacer(),
                        Link(
                          target: LinkTarget.self,
                          uri: Uri.parse(
                              'https://www.linkedin.com/in/anup-upadhaya-86aa27183/'),
                          builder: (context, followLink) => IconButton(
                            onPressed: followLink,
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                        ),
                        Link(
                          target: LinkTarget.self,
                          uri: Uri.parse('https://github.com/anupupadhaya123'),
                          builder: (context, followLink) => IconButton(
                            onPressed: followLink,
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                        ),
                        Link(
                          target: LinkTarget.self,
                          uri: Uri.parse(
                              'https://www.facebook.com/anup.upadhaya.3'),
                          builder: (context, followLink) => IconButton(
                            onPressed: followLink,
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
