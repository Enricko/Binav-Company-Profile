import 'package:binav_company_profile/section/home/about_us.dart';
import 'package:binav_company_profile/section/navbar.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavbarSection(globalKeys:{
        "home":_homeSectionKey,
        "about":_aboutSectionKey,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
