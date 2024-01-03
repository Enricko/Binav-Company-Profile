import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class NavbarSection extends StatefulWidget implements PreferredSizeWidget {
  NavbarSection({super.key, required this.globalKeys, required this.currentSection, required this.scrollOffset})
      : preferredSize = Size.fromHeight(
            kToolbarHeight * (1.4 - ((scrollOffset >= 0 && scrollOffset <= 20 ? scrollOffset / 5 : 4) / 10)));
  final Map<String, GlobalKey<State<StatefulWidget>>> globalKeys;
  final String currentSection;
  final double scrollOffset;
  @override
  final Size preferredSize;

  @override
  State<NavbarSection> createState() => _NavbarSectionState();
}

class _NavbarSectionState extends State<NavbarSection> {
  double scaleScroll() {
    return (1.3 - ((widget.scrollOffset >= 0 && widget.scrollOffset <= 20 ? widget.scrollOffset / 6.6 : 3) / 10));
  }

  bool scrollBool() {
    return widget.scrollOffset >= 0 && widget.scrollOffset <= 20;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: scrollBool() ? Colors.transparent : Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.white, // Change this color to the desired color
      ),
      elevation: scrollBool() ? 0 : 10,
      shadowColor: scrollBool() ? null : Colors.blue,
      toolbarHeight: 1000,
      title: AnimatedScale(
        scale: scaleScroll(),
        duration: Duration(milliseconds: 300),
        alignment: Alignment.centerLeft,
        child: Image.asset(
          "assets/logo_transparent.png",
          width: 100,
        ),
      ),
      actions: [
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
            selected: widget.currentSection.toLowerCase() == "home",
            ontap: () {
              Scrollable.ensureVisible(
                widget.globalKeys['home']!.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            text: "HOME",
            defaultColor: scrollBool() ? Colors.white : Colors.black,
            hoverColor: scrollBool() ? Colors.white : Colors.blue,
          ),
        const SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
            selected: widget.currentSection.toLowerCase() == "about",
            ontap: () {
              Scrollable.ensureVisible(
                widget.globalKeys['about']!.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            text: "ABOUT",
            defaultColor: scrollBool() ? Colors.white : Colors.black,
            hoverColor: scrollBool() ? Colors.white : Colors.blue,
          ),
        const SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
            selected: widget.currentSection.toLowerCase() == "services",
            ontap: () {
              Scrollable.ensureVisible(
                widget.globalKeys['services']!.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            text: "SERVICES",
            defaultColor: scrollBool() ? Colors.white : Colors.black,
            hoverColor: scrollBool() ? Colors.white : Colors.blue,
          ),
        const SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
            selected: widget.currentSection.toLowerCase() == "contact",
            ontap: () {
              Scrollable.ensureVisible(
                widget.globalKeys['contact']!.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            text: "CONTACT US",
            defaultColor: scrollBool() ? Colors.white : Colors.black,
            hoverColor: scrollBool() ? Colors.white : Colors.blue,
          ),
        const SizedBox(
          width: 25,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Text("Vessel AVTS"),
          onPressed: () async {
            Uri url = Uri.parse("https://binav-avts.id");
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              //email app is not opened
            }
          },
        ),
        const SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width < 750)
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
      ],
    );
  }
}

class HoverText extends StatefulWidget {
  final bool selected;
  final String text;
  final Color defaultColor;
  final Color hoverColor;
  final VoidCallback ontap;

  HoverText({
    required this.selected,
    required this.text,
    required this.defaultColor,
    required this.hoverColor,
    required this.ontap,
  });

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> with SingleTickerProviderStateMixin {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.text,
                  style: TextStyle(
                      color: isHovered || widget.selected ? widget.hoverColor : widget.defaultColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 75,
                  child: isHovered || widget.selected
                      ? Divider(
                          thickness: 3,
                          indent: 10,
                          endIndent: 10,
                          color: widget.defaultColor,
                          height: 20,
                        )
                      : const SizedBox(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
