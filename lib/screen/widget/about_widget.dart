import 'package:flutter/material.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final List<Widget> AboutBoxDialog = <Widget>[
    SizedBox(
      height: 60,
      width: 100,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 12),
              text: "Flutter is Google's UI toolkit for building beutiful,"
                  'Natively compiled applications for]p mobile,web,and desktop '
                  'from a single codebase. Learn more about Flutter at ',
            ),
            TextSpan(
              style: TextStyle(color: Colors.green),
              text: "https://www.boltuix.com",
            ),
            TextSpan(
              text: '.',
            )
          ],
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Show About Dialog"),
          onPressed: () {
            showAboutDialog(
                context: context,
                applicationIcon: const FlutterLogo(),
                applicationLegalese: '\u{a9} 2024 The Flutter Authors',
                applicationName: 'Flutter UIX',
                applicationVersion: 'August 2024',
                children: AboutBoxDialog);
          },
        ),
      ),
    );
  }
}
