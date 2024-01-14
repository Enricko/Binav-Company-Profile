import 'package:binav_company_profile/section/home/about_us.dart';
import 'package:binav_company_profile/section/home/our_client.dart';
import 'package:binav_company_profile/section/home/gallery.dart';
import 'package:binav_company_profile/section/home/services.dart';
import 'package:binav_company_profile/section/navbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/responsive_ui.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'home/contact_us.dart';
import 'footer.dart';
import 'home/carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController pageScrollController = ScrollController();
  final GlobalKey _homeSectionKey = GlobalKey();
  final GlobalKey _aboutSectionKey = GlobalKey();
  final GlobalKey _servicesSectionKey = GlobalKey();
  final GlobalKey _gallerySectionKey = GlobalKey();
  final GlobalKey _clientSectionKey = GlobalKey();
  final GlobalKey _contactSectionKey = GlobalKey();
  final GlobalKey _footerSectionKey = GlobalKey();

  String currentSection = "home";
  double scrollOffset = 0;

  // Mengecek Visibility %
  Map<String, double> sectionVisibility = {};

  void launchWhatsApp() async {
    // Replace the phone number with the desired number
    String phoneNumber = "+628115442085";

    String whatsappUrl = "https://wa.me/$phoneNumber";
    if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
      // Launch the WhatsApp URL
      await launchUrl(Uri.parse(whatsappUrl));
    } else {
      print("Could not launch WhatsApp");
    }
  }

  void checkSection() {
    setState(() {
      double currentSectionValue = 0;
      sectionVisibility.forEach((key, value) {
        if (value > currentSectionValue) {
          currentSectionValue = value;
          currentSection = key;
        }
      });
    });
  }

  @override
  void initState() {
    pageScrollController.addListener(() {
      setState(() {
        scrollOffset = pageScrollController.offset;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    checkSection();
    var width = MediaQuery.of(context).size.width;
    return SelectionArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: NavbarSection(globalKeys: {
          "home": _homeSectionKey,
          "about": _aboutSectionKey,
          "services": _servicesSectionKey,
          "gallerys": _gallerySectionKey,
          "client": _clientSectionKey,
          "contact": _contactSectionKey,
          "footer": _footerSectionKey,
        }, currentSection: currentSection, scrollOffset: scrollOffset),
        endDrawer: Drawer(
          child: Column(
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
                onTap: () {
                  Scrollable.ensureVisible(
                    _servicesSectionKey.currentContext!,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
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
                onTap: () {
                  Scrollable.ensureVisible(
                    _gallerySectionKey.currentContext!,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                title: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "gallery".toUpperCase(),
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
                    _clientSectionKey.currentContext!,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                title: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Client".toUpperCase(),
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
                    _contactSectionKey.currentContext!,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
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
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text("Vessel AVTS"),
                onPressed: () async {
                  Uri url = Uri.parse("https//binav-avts.id");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    //email app is not opened
                  }
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          controller: pageScrollController,
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              // About Us
              VisibilityDetector(
                key: _homeSectionKey,
                onVisibilityChanged: (VisibilityInfo info) {
                  setState(() {
                    sectionVisibility['home'] = info.visibleFraction; // Store visible fraction
                  });
                },
                child: Carousel(),
              ),
              VisibilityDetector(
                key: _aboutSectionKey,
                onVisibilityChanged: (VisibilityInfo info) {
                  setState(() {
                    sectionVisibility['about'] = info.visibleFraction; // Store visible fraction
                  });
                },
                child: AboutUsSection(),
              ),
              VisibilityDetector(
                key: _servicesSectionKey,
                onVisibilityChanged: (VisibilityInfo info) {
                  setState(() {
                    sectionVisibility['services'] = info.visibleFraction; // Store visible fraction
                  });
                },
                child: Services(),
              ),
              VisibilityDetector(
                key: _gallerySectionKey,
                onVisibilityChanged: (VisibilityInfo info) {
                  setState(() {
                    sectionVisibility['gallerys'] = info.visibleFraction; // Store visible fraction
                  });
                },
                child: Gallery(),
              ),
              VisibilityDetector(
                key: _clientSectionKey,
                onVisibilityChanged: (VisibilityInfo info) {
                  setState(() {
                    sectionVisibility['client'] = info.visibleFraction; // Store visible fraction
                  });
                },
                child: OurClient(),
              ),
              VisibilityDetector(
                key: _contactSectionKey,
                onVisibilityChanged: (VisibilityInfo info) {
                  setState(() {
                    sectionVisibility['contact'] = info.visibleFraction; // Store visible fraction
                  });
                },
                child: ContactUs(),
              ),
              VisibilityDetector(
                key: _footerSectionKey,
                onVisibilityChanged: (VisibilityInfo info) {
                  setState(() {
                    sectionVisibility['footer'] = info.visibleFraction; // Store visible fraction
                  });
                },
                child: Footer(
                  globalKeys: {
                    "home": _homeSectionKey,
                    "about": _aboutSectionKey,
                    "services": _servicesSectionKey,
                    "contact": _contactSectionKey,
                    "footer": _footerSectionKey,
                  },
                ),
              ),
            ],
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
      ),
    );
  }
}
