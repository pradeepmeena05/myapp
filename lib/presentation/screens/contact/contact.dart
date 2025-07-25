import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:packages/presentation/resources/appcolor.dart';
import 'package:packages/presentation/resources/uihelper.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          Uihelper.customText(
            text: "Get In Touch",
            fontSize: 25,
            context: context,
            textAlign: TextAlign.center,
            fontFamily: 'bold',
            fontWeight: FontWeight.bold,
            color: isDark ? Appcolor.darkheadline : Appcolor.lightheadline,
          ),
          SizedBox(height: 30),
          Container(
              width: 400,
            decoration: BoxDecoration(
              color:
                  Theme.of(context).brightness == Brightness.dark
                      ? Appcolor.darkmode
                      : Appcolor.lightmode,
      
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  spreadRadius: 7,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.customText(
                    text: "Contact me",
                    fontSize: 25,
                    context: context,
                    textAlign: TextAlign.start,
                    color: isDark ? Appcolor.darkheadline : Appcolor.lightheadline,
                    fontFamily: 'medium',
                  ),
                   SizedBox(height: 15,),
                  Wrap(
                    alignment: WrapAlignment.center,
              
                    spacing: 5,
                    runSpacing: 7,
                    children: [
                      Icon(Icons.location_pin, color: Colors.amberAccent, size: 30),
                      SizedBox(width: 10,),
                      Uihelper.customText(
                        text: "Choksey nager,Bhopal\nMadhya Pradesh 462001",
                        fontSize: 16,
                        context: context,
                        textAlign: TextAlign.start,
                        fontFamily: 'regular'
                      ),
                    ],
                  ),
                  Divider(),
                   SizedBox(height: 10,),
                   
                   Wrap(
                    alignment: WrapAlignment.center,
              
                    spacing: 5,
                    runSpacing: 7,
                    children: [
                      Icon(Icons.call, color: Colors.amberAccent, size: 30),
                      SizedBox(width: 10,),
                      Uihelper.customText(
                        text: "+91-8305376839",
                        fontSize: 16,
                        context: context,
                        textAlign: TextAlign.start,
                        fontFamily: 'regular'
                      ),
                    ],
                  ),
                  Divider(),
                   SizedBox(height: 10,),
                   
                   Wrap(
                    alignment: WrapAlignment.center,
              
                    spacing: 5,
                    runSpacing: 7,
                    children: [
                      Icon(Icons.mail, color: Colors.amberAccent, size: 30),
                      SizedBox(width: 10,),
                      Uihelper.customText(
                        text: "pradeepmeena34330",
                        fontSize: 16,
                        context: context,
                        textAlign: TextAlign.start,
                        fontFamily: 'regular'
                      ),
                    ],
                  ),
                  Divider(),
                   SizedBox(height: 10,),
                   
                   Wrap(
                    alignment: WrapAlignment.center,
              
                    spacing: 5,
                    runSpacing: 7,
                    children: [
                      Icon(FontAwesomeIcons.globe, color: Colors.amberAccent, size: 25),
                      SizedBox(width: 10,),
                      Uihelper.customText(
                        text: "linktr.ee/pradeep_meena05",
                        fontSize: 16,
                        context: context,
                        textAlign: TextAlign.start,
                        fontFamily: 'regular'
                      ),
                    ],
                  ),
                   
                   Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
