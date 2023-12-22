import 'package:binav_company_profile/section/home/about_us.dart';
import 'package:binav_company_profile/section/navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavbarSection(),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset(
                "assets/logo_transparent.png",
              ),
            ),
            ListTile(
              onTap: () {},
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
              onTap: () {},
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
            margin: EdgeInsets.symmetric(horizontal: 15,vertical:25),
            child: Column(
              children: [
                // About Us
                AboutUsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
