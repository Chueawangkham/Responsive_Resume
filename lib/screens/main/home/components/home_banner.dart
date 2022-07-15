// ignore_for_file: deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import 'package:flutter_profile/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isTablet(context) ? 2 : 3.2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/43951166.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.55),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (!Responsive.isMobileLarge(context)) SizedBox(height: 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                Center(child: ContactButton()),
                SizedBox(height: defaultPadding / 4),
                //if (Responsive.isDesktop(context)) ContactButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 35,
          width: 150,
          decoration: const BoxDecoration(
            //color: Color(0xff10141c),
            color: Color(0xff69e77f),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: TextButton(
            onPressed: () => _sendEmail(),
            child: Text(
              "Contact Now",
              style: TextStyle(
                color: Color(0xff10141c),
                //color: Color(0xff69e77f),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _launchURL(url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  void _sendEmail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'thibess091@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Hi Bass!',
        'body': 'I saw your profile online and wanted to reach out!'
      }),
    );
    _launchURL(emailLaunchUri.toString());
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodeText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("I build "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodeText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "reponsive web and mobile app.",
          speed: Duration(milliseconds: 30),
        ),
        TyperAnimatedText(
          "complete e-Commerce app UI.",
          speed: Duration(milliseconds: 30),
        ),
        TyperAnimatedText(
          "Chat app with dark and light theme.",
          speed: Duration(milliseconds: 30),
        ),
      ],
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            //style: TextStyle(color: primaryColor),
            style: TextStyle(color: Color(0xff69e77f)),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}



// class OpenUrl extends StatelessWidget {
//   const OpenUrl({Key? key}) : super(key: key);

//   _launchURLBrowser() async {
//     const url = 'https://flutterdevs.com/';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {}
// }
