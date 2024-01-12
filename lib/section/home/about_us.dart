import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive_ui.dart';

class AboutUsSection extends StatefulWidget {
  const AboutUsSection({super.key});

  @override
  State<AboutUsSection> createState() => _AboutUsSectionState();
}

class _AboutUsSectionState extends State<AboutUsSection> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xfff6f6f6),
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: const Center(
                child: Column(
                  children: [
                    Text(
                      "ABOUT US",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
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
              runAlignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                if (MediaQuery.of(context).size.width > 897)
                  Div(
                    divison: const Division(
                      colXL: 6,
                      colL: 6,
                      colM: 12,
                      colS: 12,
                      colXS: 12,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PT. BINAV MAJU SEJAHTERA",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              "Selamat datang di PT. Binav Maju Sejahtera, pusat inovasi pemetaan, survei, dan produk kartografi yang terkemuka. Sejak awal, kami memimpin industri dengan dedikasi tinggi dalam menyajikan solusi pemetaan yang terdepan dan terpercaya.\n\n"
                              "Komitmen kami terhadap ketepatan, keakuratan, dan ketelitian menjadi landasan utama dalam setiap layanan kami. Dengan menggunakan teknologi Modern dan tim ahli berpengalaman, kami mendedikasikan diri untuk memberikan solusi pemetaan dengan mengubah pandangan menjadi realitas yang dapat diandalkan.\n\n"
                              "Kami tak hanya sekadar menawarkan layanan pemetaan dan survei berkualitas tinggi, tetapi juga menghasilkan produk kartografi inovatif yang memenuhi kebutuhan unik setiap klien kami. Setiap produk kami, dibuat dengan akurat dan terampil untuk memastikan kepuasan pelanggan."),
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
                    decoration:BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Image.asset(
                      "assets/about_us.png",
                      fit:BoxFit.fill
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width < 897)
                  Div(
                    divison: const Division(
                      colXL: 6,
                      colL: 6,
                      colM: 12,
                      colS: 12,
                      colXS: 12,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PT. BINAV MAJU SEJAHTERA",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Selamat datang di PT. Binav Maju Sejahtera, pusat inovasi pemetaan, survei, dan produk kartografi yang terkemuka. Sejak awal, kami memimpin industri dengan dedikasi tinggi dalam menyajikan solusi pemetaan yang terdepan dan terpercaya.\n\n"
                              "Komitmen kami terhadap ketepatan, keakuratan, dan ketelitian menjadi landasan utama dalam setiap layanan kami. Dengan menggunakan teknologi Modern dan tim ahli berpengalaman, kami mendedikasikan diri untuk memberikan solusi pemetaan dengan mengubah pandangan menjadi realitas yang dapat diandalkan.\n\n"
                              "Kami tak hanya sekadar menawarkan layanan pemetaan dan survei berkualitas tinggi, tetapi juga menghasilkan produk kartografi inovatif yang memenuhi kebutuhan unik setiap klien kami. Setiap produk kami, dibuat dengan akurat dan terampil untuk memastikan kepuasan pelanggan.",
                          ),
                        ],
                      ),
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
