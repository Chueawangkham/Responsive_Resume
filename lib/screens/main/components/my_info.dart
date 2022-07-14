import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF202329),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/11155.jpg'),
            ),
            Spacer(flex: 2),
            Text(
              "Thibet  Chueawangkham",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Junior Flutter Developer (Front-end)",
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
            Text(
              "'' That's what I wanted to be ''",
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
