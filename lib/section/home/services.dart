import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
                    SizedBox(
                      width: width * .80,
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "PT.BINAV MAJU SEJAHTERA ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      "merupakan perusahaan terkemuka yang menyediakan layanan survei, penentuan posisi, dan eksplorasi bawah laut untuk industri minyak & gas lepas pantai serta konstruksi lepas pantai."),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            const Responsive(
              // runAlignment: WrapAlignment.end,
              children: [
                Div(
                  divison: Division(
                    colXL: 3,
                    colL: 4,
                    colM: 6,
                    colS: 6,
                    colXS: 12,
                  ),
                  child: ServiceField(
                    title: "Bawah Laut",
                    path: 'assets/icon_wave.svg',
                    subtitle:
                        "Pemetaan bawah laut yang menggabungkan teknologi canggih dengan keahlian khusus. Dari survei dasar laut hingga pemetaan yang detail, tim kami berdedikasi untuk menjelajahi dan memetakan kompleksitas lingkungan bawah laut. Dengan peralatan mutakhir, kami mengumpulkan data akurat tentang topografi, struktur geologis, serta keanekaragaman hayati di bawah laut.",
                  ),
                ),
                Div(
                  divison: Division(
                    colXL: 3,
                    colL: 4,
                    colM: 6,
                    colS: 6,
                    colXS: 12,
                  ),
                  child: ServiceField(
                    title: "Survey",
                    path: 'assets/icon_telescope.svg',
                    subtitle:
                        "Layanan survei kami dirancang dengan fokus pada ketelitian tinggi dan keandalan data. Tim ahli kami menggunakan teknologi terkini dan metodologi canggih untuk mengumpulkan, menganalisis, dan memvisualisasikan informasi yang diperlukan untuk memenuhi kebutuhan unik setiap klien. Mulai dari survei darat, udara, hingga survei bawah laut, kami siap memberikan solusi survei yang tepat dan akurat untuk proyek Anda.",
                  ),
                ),
                Div(
                  divison: Division(
                    colXL: 3,
                    colL: 4,
                    colM: 6,
                    colS: 6,
                    colXS: 12,
                  ),
                  child: ServiceField(
                    title: "Tracking",
                    path: 'assets/icon_tracking.svg',
                    subtitle:
                        "Teknologi tracking kami memungkinkan Anda untuk memantau dan melacak aset atau informasi yang berharga dengan tepat dan real-time. Dengan sistem pelacakan yang terpercaya, kami memberikan kemampuan untuk mengawasi, memetakan, dan menganalisis pergerakan atau informasi yang diperlukan secara efisien. Kami menawarkan solusi tracking yang dapat disesuaikan, baik itu untuk manajemen logistik, pengawasan aktiva, atau pengelolaan sumber daya. Dengan layanan kami, Anda dapat mengoptimalkan operasi Anda dengan data yang terukur dan dapat diandalkan.",
                  ),
                ),
              ],
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
    required this.subtitle,
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
          const SizedBox(
            height: 20,
          ),
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
