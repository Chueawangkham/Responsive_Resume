import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: Color(0xFF202329),
      child: Column(
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          Container(
            height: 35,
            width: 150,
            decoration: const BoxDecoration(
              color: Color(0xff10141c),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: TextButton(
              onPressed: () => _launchURL(
                  'https://github.com/Chueawangkham/Responsive_Resume'),
              child: Text(
                "Read More>>",
                style: TextStyle(
                  color: Color(0xff69e77f),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL(url) async {
  await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
