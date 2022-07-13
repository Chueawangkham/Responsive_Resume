import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_profile/constants.dart';

import 'package:flutter_profile/screens/main/components/attitude.dart';
import 'package:flutter_profile/screens/main/components/description.dart';
import 'package:flutter_profile/screens/main/components/section.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        Section(
          title: "Education",
        ),
        Date(text: "July 5, 2017 - April 22, 2021"),
        Description(
          number: 4,
        ),
        Divider(
          thickness: 1.5,
        ),
        SizedBox(height: defaultPadding / 2),
        Section(title: "Experience"),
        Date(text: "october 26, 2020 - December 4, 2020"),
        Description(
          number: 5,
        ),
        SizedBox(height: defaultPadding / 2),
        Date(text: "July 5, 2021 - April 22, 2022"),
        Description(
          number: 6,
        ),
        SizedBox(height: defaultPadding / 2),
        Divider(
          thickness: 1.5,
        ),
        MyProject(),
        Divider(
          thickness: 1.5,
        ),
        Attitude(),
      ],
    );
  }
}
