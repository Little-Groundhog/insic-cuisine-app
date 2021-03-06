import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'morpion.dart';
import 'strings.dart' as strings;

import 'package:url_launcher/url_launcher.dart';

class AboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      contentTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      content: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              child: Text(strings.aboutApp, textAlign: TextAlign.center),
            ),
            InkWell(
              child: Text(strings.charlotte, textAlign: TextAlign.center),
              onTap: () => Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (builder) => HomePage(
                  ),
                ),
              ),
            ),
            InkWell(
              child: Text(strings.maxime),
            ),
            InkWell(
              child: Text(strings.adrien),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: GestureDetector(
                child: Image.asset(
                  "assets/githubLogo.png",
                  color: Colors.white,
                  width: 50,
                ),
                onTap: () async {
                  if (await canLaunch(strings.repoLink))
                    await launch(strings.repoLink);
                  else
                    throw "Could not launch";
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
