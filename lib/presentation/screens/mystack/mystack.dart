import 'package:flutter/material.dart';
import 'package:packages/presentation/resources/appcolor.dart';
import 'package:packages/presentation/resources/uihelper.dart';

class Mystack extends StatelessWidget {
  const Mystack({super.key});

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    final isLargeScreen = width > 1200;
    final isMediumScreen = width > 600;
    List list = [
      {"img": "html.png"},
      {"img": "css.png"},
      {"img": "jsl.png"},
      {"img": "react.png"},
      {"img": "tailwindcss.png"},
      {"img": "icons8-flutter-logo-144.png"},
      {"img": "java-logo.png"},
      {"img": "bootstrap.png"},
      {"img": "group14.png"},
      {"img": "vector1.png"},
      {"img": "vector2.png"},
      {"img": "android-studio.png"},
    
      // {"img": "flutter.png"},
      // {"img": "java.png"},
      // {"img": "linux.png"},
      // {"img": "github.png"},
      // {"img": "tailwind.png"},
      // {"img": "android-studio.png"},
      // {"img": "git.png"},
      // {"img": "visualstudio.png"},
    ];
    return Column(
      children: [
        Uihelper.customText(
          text: "My Tech Stack",
          fontSize: 25,
          context: context,
          fontFamily: 'bold',
          textAlign: TextAlign.start,
          color: Theme.of(context).brightness == Brightness.dark
              ? Appcolor.darkheadline
              : Appcolor.lightheadline,
        ),
        const SizedBox(height: 5),
        Center(
          child: Uihelper.customTextColor(
            text: "Technologies I’ve been working with recently",
            fontSize: 20,
            context: context,
            fontFamily: 'regular',
             textAlign:TextAlign.center
          ),
        ),
        const SizedBox(height: 50),
        GridView.builder(
          shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isLargeScreen ? 6 :(isMediumScreen?6:4),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: isLargeScreen?2.8:(isMediumScreen? 1.8 : 1),
          ),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Uihelper.customImage(
                imgurl: list[index]["img"],
                 width: 30,
                 height: 300
              ),
            );
          },
        ),
      ],
    );
  }
}
