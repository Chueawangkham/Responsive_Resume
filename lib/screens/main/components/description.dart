import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Data.dart';
import 'package:flutter_profile/responsive.dart';

class Date extends StatelessWidget {
  const Date({
    Key? key,
    this.number,
  }) : super(key: key);

  final int? number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          demo_Data[number!].date!,
        )
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
    this.number,
  }) : super(key: key);
  final int? number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: maxWidth,
            padding: EdgeInsets.all(defaultPadding),
            //color: Color(0xFF202329),
            child: Text(
              demo_Data[number!].text!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
