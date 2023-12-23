import 'package:binav_company_profile/section/home/about_us.dart';
import 'package:binav_company_profile/section/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../footer.dart';
import 'carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _pageScrollController = ScrollController();
  GlobalKey _homeSectionKey = GlobalKey();
  GlobalKey _aboutSectionKey = GlobalKey();
  GlobalKey _footerSectionKey = GlobalKey();

  void launchWhatsApp() async {
    // Replace the phone number with the desired number
    String phoneNumber = "+6285158426044";

    String whatsappUrl = "https://wa.me/$phoneNumber";
    if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
      // Launch the WhatsApp URL
      await launchUrl(Uri.parse(whatsappUrl));
    } else {
      print("Could not launch WhatsApp");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavbarSection(globalKeys: {
        "home": _homeSectionKey,
        "about": _aboutSectionKey,
      }),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset(
                "assets/logo_transparent.png",
              ),
            ),
            ListTile(
              onTap: () {
                Scrollable.ensureVisible(
                  _homeSectionKey.currentContext!,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              title: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "Home".toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Scrollable.ensureVisible(
                  _aboutSectionKey.currentContext!,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              title: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "About".toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "Services".toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "Contact Us".toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                // About Us
                Container(
                  key: _homeSectionKey,
                  child: Carousel(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  key: _aboutSectionKey,
                  child: AboutUsSection(),
                ),
                Container(
                  key: _footerSectionKey,
                  child: Footer(),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            launchWhatsApp();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/icon_whatsapp.svg",
              color: Colors.white,
            ),
          )),
    );
  }
}
