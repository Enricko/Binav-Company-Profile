import 'package:binav_company_profile/utils/button.dart';
import 'package:flutter/material.dart';

class NavbarSection extends StatefulWidget implements PreferredSizeWidget {
  const NavbarSection({super.key, required this.globalKeys}) : preferredSize = const Size.fromHeight(kToolbarHeight);
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
          TopbarButton(
            onTap: () {
              Scrollable.ensureVisible(
                widget.globalKeys['home']!.currentContext!,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            text: "Home",
          ),
        if (MediaQuery.of(context).size.width > 750)
          TopbarButton(
            onTap: () {
               Scrollable.ensureVisible(
                widget.globalKeys['about']!.currentContext!,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            text: "About",
          ),
        if (MediaQuery.of(context).size.width > 750)
          TopbarButton(
            onTap: () {},
            text: "Services",
          ),
        if (MediaQuery.of(context).size.width > 750)
          TopbarButton(
            onTap: () {},
            text: "Contact Us",
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
