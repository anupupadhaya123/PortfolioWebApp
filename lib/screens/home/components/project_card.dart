import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key, required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(defaultPadding),
          color: secondaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title!,
                maxLines: 2,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Spacer(),
              Text(project.description!,
              overflow: TextOverflow.ellipsis,
              maxLines: Responsive.isMobileLarge(context)? 3 :  4,
              style: TextStyle(height: 1.5),
              
              ),
              Spacer(),
              TextButton(onPressed: () {}, child: Text("READ MORE>>>",style: TextStyle(color: primaryColor),))
            ],
          ),
        );
  }
}