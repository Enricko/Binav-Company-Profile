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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF283646),
      padding: EdgeInsets.symmetric(vertical: 35),
      child: Responsive(
        // runAlignment: WrapAlignment.start,
        alignment: WrapAlignment.start,
        children: [
          Div(
            divison: Division(
              colXL: 6,
              colL: 6,
              colM: 12,
              colS: 12,
              colXS: 12,
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/logo_transparent.png",
                    width: 100,
                  ),
                  Text(
                    "Vilook.id adalah sebuah perusahaan yang bergerak dalam menyediakan jasa visual identity profesional dan berkarakter . Dalam perjalanannya, kami telah banyak berdedikasi dan berkontribusi membantu para client untuk membangun citra brand yang kuat dan berkesan. Sehingga brand dari client yang kami handle menjadi lebih cepat naik kelas dalam hal identitas visualnya Kami percaya bahwa semua brand memiliki potensi untuk berkembang luar biasa.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Div(
            divison: const Division(
              colXL: 6,
              colL: 6,
              colM: 12,
              colS: 12,
              colXS: 12,
            ),
            child: Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Column(
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
                            SvgPicture.asset("assets/icon_phone.svg", height: 20, color: Colors.white),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "085158426044",
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
                              "fadillarizky294@gmail.com",
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
                              "Yogyakarta",
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
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
