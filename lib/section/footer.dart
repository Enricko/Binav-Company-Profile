import 'package:binav_company_profile/section/contact_us.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key, required this.globalKeys}) : super(key: key);

  final Map<String, GlobalKey<State<StatefulWidget>>> globalKeys;
  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  String emailAddress = "info@binav.co.id";
  String phoneNumber = "+628115442085";
  String housePhoneNumber = "+62811544208";
  String region = "Kota Balikpapan, Kalimantan Timur";
  String address = "Jl. Cendana BlokA1/3, Batu Ampar, Balikpapan Utara, Kalimantan Timur. 76126";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF283646),
      padding: EdgeInsets.symmetric(vertical: 35),
      child: Responsive(
        alignment: WrapAlignment.start,
        children: [
          Div(
            divison: Division(
              colXL: 3,
              colL: 3,
              colM: 6,
              colS: 12,
              colXS: 12,
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/logo.jpg",
                    width: 100,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "survey hydrografic, survey topografic, jasa survei, konsultasi survei, support construction, sonardyne, beacon, multi-bean. ",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Div(
            divison: const Division(
              colXL: 3,
              colL: 3,
              colM: 6,
              colS: 12,
              colXS: 12,
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Us",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    HoverText(
                      ontap: () {
                        Scrollable.ensureVisible(
                          widget.globalKeys['home']!.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      text: "Home",
                      defaultColor: Colors.white,
                      hoverColor: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HoverText(
                      ontap: () {
                        Scrollable.ensureVisible(
                          widget.globalKeys['about']!.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      text: "About",
                      defaultColor: Colors.white,
                      hoverColor: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HoverText(
                      ontap: () {
                        Scrollable.ensureVisible(
                          widget.globalKeys['services']!.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      text: "Service",
                      defaultColor: Colors.white,
                      hoverColor: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HoverText(
                      ontap: () {
                        Scrollable.ensureVisible(
                          widget.globalKeys['contact']!.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      text: "Contact",
                      defaultColor: Colors.white,
                      hoverColor: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Div(
            divison: const Division(
              colXL: 3,
              colL: 3,
              colM: 6,
              colS: 12,
              colXS: 12,
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Information",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/home_phone.svg", height: 20, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$housePhoneNumber",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icon_phone.svg", height: 20, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$phoneNumber",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icon_mail.svg", height: 20, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$emailAddress",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icon_location.svg",
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$region",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Color(0xFF283646))),
                        onPressed: () {
                          Scrollable.ensureVisible(
                            widget.globalKeys['contact']!.currentContext!,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text("Hubungi Kami"))
                  ],
                ),
              ),
            ),
          ),
          Div(
            divison: const Division(
              colXL: 3,
              colL: 3,
              colM: 6,
              colS: 12,
              colXS: 12,
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Our Address",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "$address",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
                    color: isHovered ? widget.hoverColor : widget.defaultColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
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
