import 'package:flutter/material.dart';
import 'package:packages/presentation/resources/appcolor.dart';
import 'package:packages/presentation/resources/uihelper.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return width > 550
        ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Uihelper.customText(
                  textAlign: TextAlign.start,

                  text: "Hi 👋,",
                  fontSize: 28,
                  context: context,
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Appcolor.darkheadline
                          : Appcolor.lightheadline,
                  fontFamily: 'bold',
                ),
                Uihelper.customText(
                  textAlign: TextAlign.start,

                  text: "My name is",
                  fontSize: 28,
                  context: context,
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Appcolor.darkheadline
                          : Appcolor.lightheadline,
                  fontFamily: 'bold',
                ),
                Uihelper.customTextColor(
                  textAlign: TextAlign.start,

                  text: "Pradeep Meena",
                  fontSize: 28,
                  context: context,

                  fontFamily: 'bold',
                ),
                Uihelper.customText(
                  text: "I turn designs into code",
                  textAlign: TextAlign.start,

                  fontSize: 28,
                  context: context,
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Appcolor.darkheadline
                          : Appcolor.lightheadline,
                  fontFamily: 'bold',
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: Appcolor.gra,
              ),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/myphoto.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        )
        : Center(
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,

            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: Appcolor.gra,
                ),
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/myphoto.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Uihelper.customText(
                    textAlign: TextAlign.start,

                    text: "Hi 👋,",
                    fontSize: 28,
                    context: context,
                    color:
                        Theme.of(context).brightness == Brightness.dark
                            ? Appcolor.darkheadline
                            : Appcolor.lightheadline,
                    fontFamily: 'bold',
                  ),
                  Uihelper.customTextColor(
                    textAlign: TextAlign.start,

                    text: "My name is",
                    fontSize: 28,
                    context: context,
                   
                    fontFamily: 'bold',
                  ),
                  Uihelper.customText(
                    textAlign: TextAlign.start,

                    text: "Pradeep Meena",
                    fontSize: 28,
                    context: context,
                    color:
                        Theme.of(context).brightness == Brightness.dark
                            ? Appcolor.darkheadline
                            : Appcolor.lightheadline,
                    fontFamily: 'bold',
                  ),
                  Uihelper.customText(
                    textAlign: TextAlign.start,

                    text: "I turn designs into code",
                    fontSize: 28,
                    context: context,
                    color:
                        Theme.of(context).brightness == Brightness.dark
                            ? Appcolor.darkheadline
                            : Appcolor.lightheadline,
                    fontFamily: 'bold',
                  ),
                ],
              ),
            ],
          ),
        );
  }
}
