import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<Map<String, String>> listService = [
    {
      "nama": "Debris Survey",
      "logo": "assets/service/debris.svg",
    },
    {
      "nama": "Topographic Survey",
      "logo": "assets/service/topographic_survey.svg",
    },
    {
      "nama": "Port & Security",
      "logo": "assets/service/port_security.svg",
    },
    {
      "nama": "Cable Pipeline Survey",
      "logo": "assets/service/cable_pipeline_survey.svg",
    },
    {
      "nama": "Dredging Survey",
      "logo": "assets/service/dredging_survey.svg",
    },
    {
      "nama": "Hydrographic Survey",
      "logo": "assets/service/hydrographic_survey.svg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xFFF0F8FF),
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "Services",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                      child: Divider(
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                        height: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            Responsive(
              // runAlignment: WrapAlignment.end,
              alignment: WrapAlignment.center,
              children: listService.map(
                (e) {
                  return Div(
                    divison: Division(
                      colXL: 3,
                      colL: 4,
                      colM: 6,
                      colS: 6,
                      colXS: 12,
                    ),
                    child: ServiceField(
                      title: e['nama']!,
                      path: e['logo']!,
                      // subtitle:
                      //     "Pemetaan bawah laut yang menggabungkan teknologi canggih dengan keahlian khusus. Dari survei dasar laut hingga pemetaan yang detail, tim kami berdedikasi untuk menjelajahi dan memetakan kompleksitas lingkungan bawah laut. Dengan peralatan mutakhir, kami mengumpulkan data akurat tentang topografi, struktur geologis, serta keanekaragaman hayati di bawah laut.",
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceField extends StatelessWidget {
  final String title;
  final String subtitle;
  final String path;

  const ServiceField({
    super.key,
    required this.path,
    required this.title,
    this.subtitle = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset(path, height: 70),
          if (subtitle == "")
            const SizedBox(
              height: 20,
            ),
          if (subtitle == "")
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
        ],
      ),
    );
  }
}
