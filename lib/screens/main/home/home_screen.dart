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
        Education(),
        Divider(
          thickness: 1.5,
        ),
        SizedBox(height: defaultPadding / 2),
        Experience(),
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

class Education extends StatelessWidget {
  const Education({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(
          title: "Education",
        ),
        Date(
          number: 0,
        ),
        Description(
          number: 0,
        ),
      ],
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(title: "Experience"),
        Date(number: 1),
        Description(number: 1),
        SizedBox(height: defaultPadding / 2),
        Date(number: 2),
        Description(number: 2),
      ],
    );
  }
}
