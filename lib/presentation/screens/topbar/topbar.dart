import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:packages/presentation/resources/appcolor.dart';
import 'package:packages/presentation/resources/uihelper.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../resources/themeCubit.dart';

class MyTopbar extends StatelessWidget implements PreferredSizeWidget {

final VoidCallback? onHomeTap;
  final VoidCallback? onAboutTap;
  final VoidCallback? onStackTap;
  final VoidCallback? onProjectTap;
  
  final VoidCallback? onContactTap;
  final VoidCallback? onCertificateTap;

  const MyTopbar({
    super.key,
    this.onHomeTap,
    
    this.onAboutTap,
    this.onStackTap,
    this.onProjectTap,
    this.onContactTap,
    this.onCertificateTap,
  });

  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark
              ? Appcolor.darkmode
              : Appcolor.lightmode,

      title:
          width < 700
              ? Row(
                children: [
                  Expanded(
                    child: Uihelper.customTextColor(
                      textAlign: TextAlign.start,
                      text: 'Pradeep Meena',
                      fontSize: 20,
                      context: context,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.dark_mode),
                    onPressed: () {
                      context.read<Themecubit>().toggle();
                    },
                  ),
                ],
              )
              : Uihelper.customTextColor(
                textAlign: TextAlign.start,
                text: 'Pradeep Meena',
                fontSize: 20,
                context: context,
                fontWeight: FontWeight.bold,
              ),

      actions:
          width > 700
              ? [
                GestureDetector(
                  
                  onTap: onHomeTap,
                  child: Uihelper.customText(
                    text: "Home",
                    textAlign: TextAlign.start,
                    fontSize: 14,
                    context: context,
                    fontFamily: "regular",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                      onTap:onAboutTap,
                  child: Uihelper.customText(
                    text: "About",
                    textAlign: TextAlign.start,
                    fontSize: 14,
                    context: context,
                    fontFamily: "regular",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                   onTap: onStackTap,
                  child: Uihelper.customText(
                    text: "Tech Stack",
                    textAlign: TextAlign.start,
                    fontSize: 14,
                    context: context,
                    fontFamily: "regular",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: onProjectTap,
                  child: Uihelper.customText(
                    text: "Projects",
                    textAlign: TextAlign.start,
                    fontSize: 14,
                    context: context,
                    fontFamily: "regular",
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: onContactTap,
                  child: Uihelper.customText(
                    text: "Certificates",
                    textAlign: TextAlign.start,
                    fontSize: 14,
                    context: context,
                    fontFamily: "regular",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 const SizedBox(width: 20),
                GestureDetector(
                  onTap: onCertificateTap,
                  child: Uihelper.customText(
                    text: "Contact",
                    textAlign: TextAlign.start,
                    fontSize: 14,
                    context: context,
                    fontFamily: "regular",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse("https://github.com/pradeepmeena05"));
                  },
                  icon: const FaIcon(FontAwesomeIcons.github, size: 18),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse("https://www.linkedin.com/in/pradeep-meena/"),
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.linkedinIn, size: 18),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse("https://leetcode.com/u/pradeepcs05/"));
                  },
                  icon: const FaIcon(SimpleIcons.leetcode, size: 18),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse(
                        "https://www.geeksforgeeks.org/user/pradeepmeenalearner34330/",
                      ),
                    );
                  },
                  icon: const FaIcon(SimpleIcons.geeksforgeeks),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    context.read<Themecubit>().toggle();
                  },
                  icon: const Icon(Icons.dark_mode),
                ),
              ]
              : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
