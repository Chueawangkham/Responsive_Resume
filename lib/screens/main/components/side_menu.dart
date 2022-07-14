// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'area_info_text.dart';
import 'my_info.dart';
import 'skills.dart';
//import 'dart:js' as js;
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

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
                    PersonalDetails(
                      title: "Address :",
                      text: "224 M.8 Khamtao \nMuang NakhonPhanom 48000",
                    ),
                    PersonalDetails(
                      title: "Email :",
                      text: "thibess091@gmail.com",
                    ),
                    PersonalDetails(
                      title: "Tel :",
                      text: "090-9131007",
                    ),
                    PersonalDetails(
                      title: "Age :",
                      text: "24",
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Skills(),
                    Divider(),
                    SoftwareTool(),
                    Divider(),
                    GraphicDesign(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SoftwareTool extends StatelessWidget {
  const SoftwareTool({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: Column(
        children: [
          Text(
            "Software and Tools",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Software(),
          SizedBox(
            height: defaultPadding,
          )
        ],
      ),
    );
  }
}

// IconButton(
//   onPressed: () {},
//   icon: SvgPicture.asset("assets/icons/vscode-svgrepo-com.svg"),
//   //iconSize: 5,
// ),
// IconButton(
//   onPressed: () {},
//   icon: SvgPicture.asset("assets/icons/android_studio.svg"),
//   //iconSize: 5,
// ),
// IconButton(
//   onPressed: () {},
//   icon: SvgPicture.asset("assets/icons/icons8-xcode.svg"),
//   //iconSize: 5,
// ),
// IconButton(
//   onPressed: () {},
//   icon: SvgPicture.asset("assets/icons/firebase-console.svg"),
//   //iconSize: 5,
// ),
// IconButton(
//   onPressed: () {},
//   icon: SvgPicture.asset("assets/icons/icons8-git-240.svg"),
// ),
// IconButton(
//   onPressed: () {
//     // js.context
//     //     .callMethod('open', ['https://github.com/Chueawangkham']);
//   },
//   icon: SvgPicture.asset("assets/icons/github.svg"),
// ),

class Software extends StatelessWidget {
  const Software({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/vscode-svgrepo-com.svg"),
            //iconSize: 5,
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/android_studio.svg"),
            //iconSize: 5,
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/icons8-xcode.svg"),
            //iconSize: 5,
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/firebase-console.svg"),
            //iconSize: 5,
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/icons8-git-240.svg"),
            //iconSize: 5,
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () => _launchURL('https://github.com/Chueawangkham'),
            icon: SvgPicture.asset("assets/icons/github.svg"),
          ),
        ),
      ],
    );
  }
}

class GraphicDesign extends StatelessWidget {
  const GraphicDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: Column(
        children: [
          Text(
            "Graphic Design Tools",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon:
                    SvgPicture.asset("assets/icons/icons8-adobe-photoshop.svg"),
              ),
              IconButton(
                onPressed: () => _launchURL(
                    'https://xd.adobe.com/view/d5e278d3-0ffb-464a-b5e0-100d62d46993-80b1/screen/38132e23-aa9e-4967-b50b-2323efac52eb?fullscreen&hints=off'),
                //
                icon: SvgPicture.asset("assets/icons/icons8-adobe-xd.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                    "assets/icons/icons8-adobe-illustrator.svg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _launchURL(url) async {
  await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
