import 'package:binav_company_profile/utils/button.dart';
import 'package:flutter/material.dart';

class NavbarSection extends StatefulWidget implements PreferredSizeWidget {
  const NavbarSection({super.key, required this.globalKeys})
      : preferredSize = const Size.fromHeight(kToolbarHeight);
  final Map<String, GlobalKey<State<StatefulWidget>>> globalKeys;
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
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.white, // Change this color to the desired color
      ),
      // elevation: 10.0,
      shadowColor: Colors.blue,
      title: Image.asset(
        "assets/logo_transparent.png",
        width: 100,
      ),
      actions: [
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
              ontap: () {
                Scrollable.ensureVisible(
                          widget.globalKeys['home']!.currentContext!,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
              },
              text: "HOME",
              defaultColor: Colors.black,
              hoverColor: Colors.blue),
        SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
              ontap: () {
                Scrollable.ensureVisible(
                  widget.globalKeys['about']!.currentContext!,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              text: "ABOUT",
              defaultColor: Colors.black,
              hoverColor: Colors.blue),
        SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
              ontap: () {},
              text: "SERVICES",
              defaultColor: Colors.black,
              hoverColor: Colors.blue),
        SizedBox(
          width: 25,
        ),
        if (MediaQuery.of(context).size.width > 750)
          HoverText(
              ontap: () {},
              text: "CONTACT US",
              defaultColor: Colors.black,
              hoverColor: Colors.blue),
        SizedBox(
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
  final String text;
  final Color defaultColor;
  final Color hoverColor;
  final VoidCallback ontap;

  HoverText({
    required this.text,
    required this.defaultColor,
    required this.hoverColor,
    required this.ontap,
  });

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: MouseRegion(
        onEnter: (_) => handleHover(true),
        onExit: (_) => handleHover(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          child: Text(
            widget.text,
            style: TextStyle(
              color: isHovered ? widget.hoverColor : widget.defaultColor,
            ),
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
