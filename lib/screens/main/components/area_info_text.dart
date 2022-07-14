import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
          Text(
            text!,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
