import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Recommendation.dart';

class Attitude extends StatelessWidget {
  const Attitude({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Attitude",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Container(
            width: maxWidth,
            padding: EdgeInsets.all(defaultPadding),
            color: Color(0xFF202329),
            child: Column(
              children: [
                Text(
                  demo_recommendations[3].text!,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
