import 'package:flutter/material.dart';
import 'package:packages/presentation/resources/uihelper.dart';
import 'package:packages/presentation/resources/appcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateCards extends StatelessWidget {
  const CertificateCards({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> certificates = [
      {
        'img': 'c.png',
        'title': 'problem solving through programming in c',
        'link':
            "https://drive.google.com/file/d/1Mfhomd-CYJ5uEgsYNzfNetcyDQq_AxON/view?usp=sharing",
      },
      {
        'img': 'javascript .png',
        'title': 'JavaScript Certificate',
        'link':
            "https://drive.google.com/file/d/1eq4L5aQ-n92nzK5XjHJTe-WJG26jBgAs/view?usp=sharing",
      },
      {
        'img': 'java.png',
        'title': 'Programming in Java',
        'link':
            "https://drive.google.com/file/d/145zOFTXgAZMdI0tC81BwMP6L2pxlbqRb/view?usp=sharing",
      },
      {
        'img': 'dsajava.png',
        'title': 'Data Structure And Algorithms Using Java',
        'link':
            "https://drive.google.com/file/d/1RzSOEtYK1eW2p1Zmq0L0JxLMPqEhyIYY/view?usp=sharing",
      },
      {
        'img': 'codeclash .png',
        'title': 'Code Clash Winner',
        'link':
            "https://drive.google.com/file/d/1Bft7o69oUBE2QyBf0bk51CmfM3SlsNp2/view?usp=sharing",
      },
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 1200;
    final isMediumScreen = screenWidth > 600;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Uihelper.customText(
          text: "Certificates",
          fontSize: 25,
          context: context,
          textAlign: TextAlign.center,
          fontFamily: 'bold',
          fontWeight: FontWeight.bold,
          color: isDark ? Appcolor.darkheadline : Appcolor.lightheadline,
        ),
        const SizedBox(height: 10),
        Uihelper.customText(
          text: "Courses I've Completed",
          fontSize: 20,
          context: context,
          textAlign: TextAlign.center,
          fontFamily: 'regular',
          fontWeight: FontWeight.bold,
          color: isDark ? Appcolor.lightcontent : Appcolor.darkcontent,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: certificates.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isLargeScreen ? 4 : (isMediumScreen ? 2 : 1),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio:
                isLargeScreen ? 0.9 : (isMediumScreen ? 0.9 : 0.85),
          ),
          itemBuilder: (context, index) {
            final cert = certificates[index];

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 300,
                ),
                child: InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(cert['link']!));
                  },
                  child: Card(
                    color:
                        isDark ? const Color(0xFF363636) : Appcolor.lightmode,

                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: isDark ? Colors.white10 : Colors.grey.shade300,
                        width: 1
                        ,
                      ),
                    ),
                    shadowColor: const Color.fromARGB(255, 111, 110, 104),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10.0,
                        right: 10,
                        bottom: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Uihelper.customCardImage(
                              imgurl: cert['img']!,
                              height: 100,
                              width: 500,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Uihelper.customText(
                              text: cert['title']!,
                              fontSize: 14,
                              context: context,
                              textAlign: TextAlign.center,
                              fontFamily: 'medium',
                              fontWeight: FontWeight.bold,
                              color:
                                  isDark
                                      ? Appcolor.darkheadline
                                      : Appcolor.lightheadline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
