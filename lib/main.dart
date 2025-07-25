import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:packages/presentation/resources/apptheme.dart';
import 'package:packages/presentation/resources/themeCubit.dart';
import 'package:packages/presentation/resources/themes.dart';
import 'package:packages/presentation/screens/about/aboutme.dart';
import 'package:packages/presentation/screens/card/cards.dart';
import 'package:packages/presentation/screens/certificates/certificateCards.dart';
import 'package:packages/presentation/screens/contact/contact.dart';
import 'package:packages/presentation/screens/intro/intro.dart';
import 'package:packages/presentation/screens/mystack/mystack.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:packages/presentation/resources/appcolor.dart';
import 'package:packages/presentation/resources/uihelper.dart' show Uihelper;
import 'package:packages/presentation/screens/topbar/topbar.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(BlocProvider(create: (_) => Themecubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Themecubit, Themes>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state is LightTheme ? Apptheme.lightTheme : Apptheme.darkTheme,
          home: HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey home = GlobalKey();
  final GlobalKey about = GlobalKey();
  final GlobalKey techstack = GlobalKey();
  final GlobalKey project = GlobalKey();
  final GlobalKey contact = GlobalKey();
  final GlobalKey certificate = GlobalKey();
 void scrollToSection(GlobalKey key){
      final context=key.currentContext;
      if(context!=null){
          Scrollable.ensureVisible(context,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut
          );
      }
     }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    

    return Scaffold(
     appBar: MyTopbar(
  onHomeTap: () => scrollToSection(home),
  onAboutTap: () => scrollToSection(about),
  onStackTap: () => scrollToSection(techstack),
  onProjectTap: () => scrollToSection(project),
  onContactTap: () => scrollToSection(contact),
  onCertificateTap: () => scrollToSection(certificate),
),

      endDrawer:
          width < 700
              ? Drawer(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor:
                    Theme.of(context).brightness == Brightness.dark
                        ? Appcolor.darkmode
                        : Appcolor.lightmode,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    drawerItem(context, Icons.home, "Home",home),
                    drawerItem(context, Icons.person, "About",about),
                    drawerItem(context, Icons.code, "Tech Stack",techstack),
                    drawerItem(context, Icons.work, "Projects",project),
                    drawerItem(context, Icons.badge, "Certificates",contact),
                    drawerItem(context, Icons.contact_mail, "Contact",certificate),
                    const Divider(),
                    drawerLink(
                      context,
                      FontAwesomeIcons.github,
                      "GitHub",
                      "https://github.com/pradeepmeena05",
                    ),
                    drawerLink(
                      context,
                      FontAwesomeIcons.linkedinIn,
                      "LinkedIn",
                      "https://www.linkedin.com/in/pradeep-meena/",
                    ),
                    drawerLink(
                      context,
                      SimpleIcons.leetcode,
                      "Leetcode",
                      "https://leetcode.com/u/pradeepcs05/",
                    ),
                    drawerLink(
                      context,
                      SimpleIcons.geeksforgeeks,
                      "GeeksforGeeks",
                      "https://www.geeksforgeeks.org/user/pradeepmeenalearner34330/",
                    ),
                  ],
                ),
              )
              : null,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0,right: 12,bottom: 20),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(key: home, child: Intro()),
              const SizedBox(height: 60),
              Container(key: about, child: Aboutme()),

              const SizedBox(height: 50),
              Container(key: techstack, child: Mystack()),

              const SizedBox(height: 50),
              Container(key: project, child: CardData()),

              const SizedBox(height: 50),
              Container(key: contact, child: CertificateCards()),
              const SizedBox(height: 50,),
               Container(key: certificate,child: Contact(),)
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerItem(BuildContext context, IconData icon, String label,GlobalKey key) {
    return ListTile(
      leading: Icon(icon),
      title: Uihelper.customText(
        textAlign: TextAlign.start,
        text: label,
        fontSize: 14,
        context: context,
        fontFamily: "regular",
        fontWeight: FontWeight.bold,
      ),
      onTap: (){
        Navigator.pop(context);
        scrollToSection(key);
      },
    );
  }

  Widget drawerLink(
    BuildContext context,
    IconData icon,
    String label,
    String url,
  ) {
    return ListTile(
      leading: FaIcon(icon),
      title: Uihelper.customText(
        textAlign: TextAlign.start,
        text: label,
        fontSize: 14,
        context: context,
        fontFamily: "regular",
        fontWeight: FontWeight.bold,
      ),
      onTap: () => launchUrl(Uri.parse(url)),
    );
  }
}
