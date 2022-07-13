import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

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
        Center(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              "Skills",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
        Column(
          children: [
            TitleSkills(
              title: "Learning & Development",
            ),
            Row(
              children: [
                SubSkillList(text: "Flutter"),
                SizedBox(width: defaultPadding / 2),
                SubSkillList(text: "Dart"),
                SizedBox(width: defaultPadding / 2),
                SubSkillList(text: "Firebase"),
              ],
            ),
            TitleSkills(
              title: "Experienced",
            ),
            Row(
              children: [
                SubSkillList(text: "JavaScript"),
                SizedBox(width: defaultPadding / 2),
                SubSkillList(text: "Python"),
                SizedBox(width: defaultPadding / 2),
                SubSkillList(text: "C++"),
              ],
            ),
            TitleSkills(
              title: "Familiar",
            ),
            Row(
              children: [
                SubSkillList(text: "RESTful API"),
                SizedBox(width: defaultPadding / 2),
                SubSkillList(text: "SQL"),
                SizedBox(width: defaultPadding / 2),
                SubSkillList(text: "NoSQL"),
              ],
            ),
            SizedBox(
              height: defaultPadding,
            )
          ],
        ),
      ],
    );
  }
}

class TitleSkills extends StatelessWidget {
  const TitleSkills({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Row(
              children: [
                Text(
                  title!,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SubSkillList extends StatelessWidget {
  const SubSkillList({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text!,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
