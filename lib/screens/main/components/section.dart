import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                //"Education",
                title!,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
