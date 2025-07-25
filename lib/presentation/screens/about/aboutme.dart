import 'package:flutter/material.dart';
import 'package:packages/presentation/resources/appcolor.dart';
import 'package:packages/presentation/resources/uihelper.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ?  Appcolor.lightcontent:Appcolor.darkcontent ;
    final headlineColor = isDark ? Appcolor.darkheadline : Appcolor.lightheadline;

    return LayoutBuilder(
      builder: (context, constraints) {
        final double currWidth = constraints.maxWidth > 600
            ? constraints.maxWidth * 0.75
            : constraints.maxWidth * 0.95;

        return Center(
          child: Container(
            width: currWidth,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Uihelper.customText(
                  text: "👨‍💻 About Me",
                  fontSize: 25,
                  context: context,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.bold,
                  color: headlineColor,
                  fontFamily: 'bold',
                ),
                const SizedBox(height: 16),
                Uihelper.customText(
                  text:
                      "I’m a passionate developer who enjoys building responsive and impactful digital experiences. Whether it's creating mobile apps, solving problems, or learning new technologies, I love turning ideas into reality. 🚀",
                  fontSize: 16,
                  context: context,
                  textAlign: TextAlign.start,
                  color: textColor,
                  fontFamily: 'regular',
                
                ),
                const SizedBox(height: 30),

                
                Uihelper.customText(
                  text: "🎓 Education",
                  fontSize: 25,
                  context: context,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.bold,
                  color: headlineColor,
                  fontFamily: 'bold',
                ),
                const SizedBox(height: 20),

                _educationTile(
                  context: context,
                  title: "Bachelor of Technology",
                  college: "Truba College of Science and Technology",
                  cgpa: "7.40",
                  year: "2021 - 2025",
                  buttonLabel: "View",
                  textColor: textColor,
                  isDark: isDark,
                  fontWeight: FontWeight.bold
                ),
                const Divider(),
                _educationTile(
                  context: context,
                  title: "Higher Secondary",
                  college: "Elite H S School, Bhopal",
                  cgpa: "86.6%",
                  year: "2020 - 2021",
                  buttonLabel: "View",
                  textColor: textColor,
                  isDark: isDark,
                    fontWeight: FontWeight.bold
                ),
                const Divider(),
                _educationTile(
                  context: context,
                  title: "High School",
                  college: "Elite H S School, Bhopal",
                  cgpa: "89.9%",
                  year: "2018 - 2019",
                  buttonLabel: "View",
                  textColor: textColor,
                  isDark: isDark,
                    fontWeight: FontWeight.bold
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _educationTile({
    required BuildContext context,
    required String title,
    required String college,
    required String cgpa,
    required String year,
    required String buttonLabel,
    required Color textColor,
    required bool isDark,
    required FontWeight fontWeight
  }) {
    final contentColor = isDark ? Appcolor.darkcontent : Appcolor.lightcontent;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        title: Uihelper.customText(
          text: title,
          fontSize: 16,
          context: context,
          textAlign: TextAlign.start,
          color: textColor,
          fontFamily: 'regular',
          fontWeight: fontWeight
        ),
        subtitle: Wrap(
          spacing: 12,
          runSpacing: 4,
          children: [
            Uihelper.customText(
              text: college,
              fontSize: 14,
              context: context,
              textAlign: TextAlign.start,
              color: contentColor,
              fontFamily: 'medium',
            ),
            Uihelper.customText(
              text: "CGPA: $cgpa",
              fontSize: 14,
              context: context,
              textAlign: TextAlign.start,
              color: contentColor,
              fontFamily: 'medium',
            ),
          ],
        ),
        trailing: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                TextButton(onPressed: (){}, child: Uihelper.customText(text: "Full time", fontSize: 10, context: context, textAlign: TextAlign.center,color: Appcolor.darkbutton),
                  style: TextButton.styleFrom(
                        backgroundColor: Appcolor.lightbutton,
                        minimumSize: const Size(60,32)
                        
                  ),
                 ),

              const SizedBox(height: 10),
              Uihelper.customText(
                text: year,
                fontSize: 14,
                context: context,
                textAlign: TextAlign.center,
                color: contentColor,
                fontFamily: 'medium',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
