import 'package:binav_company_profile/utils/client_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/responsive_ui.dart';

class OurClient extends StatefulWidget {
  const OurClient({super.key});

  @override
  State<OurClient> createState() => _OurClientState();
}

class _OurClientState extends State<OurClient> {
  List<Map<String, String>> listClient = [
    {
      "nama": "PT. Apexindo",
      "logo": "assets/client/PT_Apexindo.png",
    },
    {
      "nama": "PT. Aquamarine Divindo Inspection",
      "logo": "assets/client/PT_Aquamarine.png",
    },
    {
      "nama": "PT. Buwana Kreasi Internasional",
      "logo": "assets/client/PT_BKI.png",
    },
    {
      "nama": "PT. DewiRahmi Jaya Perkasa",
      "logo": "assets/client/PT_Dewirahmi.png",
    },
    {
      "nama": "PT. Feria Konstruksindo",
      "logo": "assets/client/PT_Feria.png",
    },
    {
      "nama": "PT. Putra Tunggal Mandiri",
      "logo": "assets/client/PT_PutraTunggalMandiri.jpg",
    },
    {
      "nama": "PT. Indo Strait Tbk",
      "logo": "assets/client/PT_IndoSraits.png",
    },
    {
      "nama": "PT. Kideco",
      "logo": "assets/client/PT_Kideco.png",
    },
    {
      "nama": "PT. Meindo",
      "logo": "assets/client/PT_Meindo.png",
    },
    {
      "nama": "PT. Modern Widya Technical",
      "logo": "assets/client/PT_ModernWidya.jpg",
    },
    {
      "nama": "PT. Taka",
      "logo": "assets/client/PT_Taka.png",
    },
    {
      "nama": "PT. Arutmin",
      "logo": "assets/client/PT_Arutmin.jpg",
    },
    {
      "nama": "PT. Panca Duta Prakarsa",
      "logo": "assets/client/PT_PancaDuta.png",
    },
    {
      "nama": "PT. Patra Drilling Contractor",
      "logo": "assets/client/PT_PDC.jpg",
    },
    {
      "nama": "PT. Onasis Indonesia",
      "logo": "assets/client/PT_Onasis.png",
    },
    // asd
    {
      "nama": "PT. Elnusa Tbk",
      "logo": "assets/client/PT_Elnusa.png",//
    },
    {
      "nama": "PT. Pertamina PHM",
      "logo": "assets/client/PT_Pertamina_PHM.jpg",//
    },
    {
      "nama": "PT. Arung",
      "logo": "assets/client/PT_Arung.jpg",//
    },
    {
      "nama": "PT. Chevron Pacific Indonesia",
      "logo": "assets/client/PT_Chevron.png",//
    },
    {
      "nama": "PT. Japan Drilling Indonesia",
      "logo": "assets/client/PT_JDI.jpg",//
    },
    {
      "nama": "PT. Maspion",
      "logo": "assets/client/PT_Maspion.jpg",//
    },
    {
      "nama": "PT. Raga Perkasa Ekaguna",
      "logo": "assets/client/PT_Raga_Perkasa_Ekaguna.jpg",//
    },
    {
      "nama": "PT. CNOOC SES LTD",
      "logo": "assets/client/PT_CNOOC.jpg",
    },
    {
      "nama": "PT. Golder Associates",
      "logo": "assets/client/PT_Golder_Associates.png",
    },
    {
      "nama": "PT. Anadarko",
      "logo": "assets/client/PT_Anadarko.png",
    },
    {
      "nama": "PT. Geo Ocean",
      "logo": "assets/client/PT_Geo_Ocean.png",
    },
    {
      "nama": "PT. Modern Widya Tehnical",
      "logo": "assets/client/PT_Modern_Widya_Tehnical.png",
    },
    {
      "nama": "PT. Modern Widya Tehnical",
      "logo": "assets/client/PT_Lancar_Rejeki.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF0F8FF),
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: const Center(
                child: Column(
                  children: [
                    Text(
                      "OUR CLIENT",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Divider(
                        thickness: 3,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Responsive(
              // runAlignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: listClient.map(
                (e) {
                  return Div(
                    divison: Division(
                      colXL: 2,
                      colL: 2,
                      colM: 3,
                      colS: 4,
                      colXS: 4,
                    ),
                    child: Tooltip(
                      message: e['nama']!,
                      child: e['logo']!.contains(".svg")
                          ? Container(
                              margin: EdgeInsets.all(10),
                              height: 100,
                              child: SvgPicture.asset(e['logo']!),
                            )
                          : LogoClient(path: e['logo']!),
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
