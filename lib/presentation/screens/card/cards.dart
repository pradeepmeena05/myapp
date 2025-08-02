import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:packages/presentation/resources/appcolor.dart';
import 'package:packages/presentation/resources/uihelper.dart';
import 'package:url_launcher/url_launcher.dart';

class CardData extends StatefulWidget {
  const CardData({super.key});

  @override
  State<CardData> createState() => _CardDataState();
}

class _CardDataState extends State<CardData> {
  List<Map<String, String>> list = [
    {
      "title": "Chat App",
      "img": "chat.png",
      "tech": "Flutter, Dart, Vscode",
      "link1": "https://github.com/pradeepmeena05/Messenger-app",
      "link2": "https://youtu.be/Obncjjca2H0",
    },
    {
      "title": "Blinkit Clone",
      "img": "blinkit.png",
      "tech": "Flutter, Dart, Vscode",
      "link1": "https://github.com/pradeepmeena05/Blinkit-Clone",
      "link2": "https://youtu.be/uFrECx2MgT4",
    },
    {
      "title": "Instagram Clone",
      "img": "instaclone.png",
      "tech": "Flutter, Dart, Vscode",
      "link1": "https://github.com/pradeepmeena05/Insta-Clone",
      "link2": "https://youtu.be/Wf-OIdccT2g",
    },
    {
      "title": "Weather App",
      "img": "weatherapp.png",
      "tech": "Flutter, Dart, Vscode",
      "link1": "https://github.com/pradeepmeena05/Flutter-Weather-APP",
      "link2": "",
    },
    {
      "title": "Sorting Visualizer",
      "img": "sorting.png",
      "tech": "Flutter, Dart, Vscode",
      "link1": "https://github.com/pradeepmeena05/Flutter-Sorting-visualizer",
      "link2": "https://youtu.be/xD73pZ30CzE",
    },
    {
      "title": "Todo App",
      "img": "todo.png",
      "tech": "Flutter, Dart, Vscode",
      "link1": "https://github.com/pradeepmeena05/flutter-Todo",
      "link2": "https://youtube.com/shorts/_y7zJlMEFCQ",
    },

     {
      "title": "Password Generator App",
      "img": "password.png",
      "tech": "Flutter, Dart, Vscode",
      "link1": "https://github.com/pradeepmeena05/Password-Generator",
      "link2": "https://www.youtube.com/shorts/tzI4BTy6DGo",
    },
    {
      "title": "FundRaise-Intern-Portal",
      "img": "leaderboard.png",
      "tech": "Flutter, Dart, Vscode",
      "link1": "https://github.com/pradeepmeena05/-FundRaise-Intern-Portal",
      "link2": "https://www.youtube.com/shorts/CKX2dbiSmgA",
    },

  

   
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final width = MediaQuery.of(context).size.width;
    final isLargeScreen = width > 1200;
    final isMediumScreen = width > 600;

    return Column(
      children: [
        Uihelper.customText(
          text: "Projects",
          fontSize: 25,
          context: context,
          textAlign: TextAlign.center,
          fontFamily: 'bold',
          fontWeight: FontWeight.bold,
          color: isDark ? Appcolor.darkheadline : Appcolor.lightheadline,
        ),
        const SizedBox(height: 10),
        Uihelper.customText(
          text: "Things I've built so far",
          fontSize: 20,
          context: context,
          textAlign: TextAlign.center,
          fontFamily: 'regular',
          fontWeight: FontWeight.bold,
          color: isDark ? Appcolor.lightcontent : Appcolor.darkcontent,
        ),
        const SizedBox(height: 20),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isLargeScreen ? 4 : (isMediumScreen ? 2 : 1),
            childAspectRatio: isLargeScreen ? 0.9 : (isMediumScreen ? 0.9 : 0.85),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return _buildProjectCard(context, isDark, index);
          },
        ),
      ],
    );
  }

  Widget _buildProjectCard(BuildContext context, bool isDark, int index) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300, maxHeight: 400),
        child: Card(
          color: isDark ? const Color(0xFF363636) : Appcolor.lightmode,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 6,
          shadowColor: const Color.fromARGB(255, 111, 110, 104),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                  child: Uihelper.customCardImage(
                    imgurl: list[index]["img"]!,
                    height: 100,
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Uihelper.customText(
                text: list[index]['title']!,
                fontSize: 20,
                context: context,
                textAlign: TextAlign.center,
                fontFamily: 'medium',
                color: isDark ? Appcolor.lightmode : Appcolor.darkmode,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Uihelper.customText(
                  text: "👨‍💻 Flutter Developer | 🚀 Building apps with love | 💡 Sharing code & UI ideas",
                  fontSize: 16,
                  context: context,
                  textAlign: TextAlign.center,
                  fontFamily: 'light',
                  color: isDark ? Appcolor.darkheadline : Appcolor.darkcontent,
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Uihelper.customText(
                      text: "Tech Stack: ",
                      fontSize: 16,
                      context: context,
                      textAlign: TextAlign.start,
                      fontFamily: 'regular',
                      color: isDark ? Appcolor.darkheadline : Appcolor.lightheadline,
                    ),
                    Uihelper.customText(
                      text: list[index]['tech']!,
                      fontSize: 15,
                      context: context,
                      textAlign: TextAlign.start,
                      fontFamily: 'light',
                      color: isDark ? Appcolor.darkheadline : Appcolor.lightheadline,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 12,
                  runSpacing: 8,
                  children: [
                    _buildActionButton(
                      context,
                      icon: Icons.link,
                      label: "Live Preview",
                      isDark: isDark,
                      url: list[index]['link2']!,
                    ),
                    _buildActionButton(
                      context,
                      icon: FontAwesomeIcons.github,
                      label: "View Code",
                      isDark: isDark,
                      url: list[index]['link1']!,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required bool isDark,
    required String url,
  }) {
    return InkWell(
      onTap: () async {
        if (url.isNotEmpty) {
          final uri = Uri.parse(url);
          try {
            final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
            if (!launched) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Could not launch $url")),
              );
            }
          } catch (e) {
            debugPrint("Launch error: $e");
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Error: $e")),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("No $label Available")),
          );
        }
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 18),
            const SizedBox(width: 6),
            Uihelper.customText(
              text: label,
              fontSize: 15,
              context: context,
              fontFamily: 'regular',
              color: isDark ? Appcolor.lightmode : Appcolor.darkmode,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
