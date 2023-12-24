import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavbarSection extends StatefulWidget implements PreferredSizeWidget {
  const NavbarSection({super.key, required this.globalKeys, required this.currentSection})
      : preferredSize = const Size.fromHeight(kToolbarHeight);
  final Map<String, GlobalKey<State<StatefulWidget>>> globalKeys;
  final String currentSection;
  @override
  final Size preferredSize;

  @override
  State<NavbarSection> createState() => _NavbarSectionState();
}

class _NavbarSectionState extends State<NavbarSection> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(
        color: Colors.white, // Change this color to the desired color
      ),
      elevation: 0,
      // shadowColor: Colors.blue,
      title: Image.asset(
        "assets/logo_transparent.png",
        width: 100,
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
            defaultColor: Colors.black,
            hoverColor: Colors.blue,
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
            defaultColor: Colors.black,
            hoverColor: Colors.blue,
          ),
        const SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
            selected: widget.currentSection.toLowerCase() == "services",
            ontap: () {},
            text: "SERVICES",
            defaultColor: Colors.black,
            hoverColor: Colors.blue,
          ),
        const SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
            selected: widget.currentSection.toLowerCase() == "contact us",
            ontap: () {},
            text: "CONTACT US",
            defaultColor: Colors.black,
            hoverColor: Colors.blue,
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
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 75,
                  child: isHovered || widget.selected
                      ? const Divider(
                          thickness: 3,
                          indent: 10,
                          endIndent: 10,
                          color: Colors.black,
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
