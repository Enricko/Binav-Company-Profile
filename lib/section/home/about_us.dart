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
    return Container(
      color: Color(0xfff6f6f6),
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 40),
      child: SafeArea(
        child: Column(
          children: [
            Container(
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
              children: [
                if (MediaQuery.of(context).size.width > 897)
                  Div(
                    divison: Division(
                      colXL: 6,
                      colL: 6,
                      colM: 12,
                      colS: 12,
                      colXS: 12,
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PT. BINAV MAJU SEJAHTERA",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),
                          ),
                          // TODO : di ubah karena ini Text Contoh
                          Text(
                              "Selamat datang di PT. Binav Maju Sejahtera, pusat inovasi dalam pemetaan, survei, dan produk kartografi yang terkemuka. Sejak awal, kami memimpin industri dengan dedikasi tinggi dalam menyajikan solusi pemetaan yang terdepan dan terpercaya.\n\n"
                              "Komitmen kami terhadap ketepatan, keakuratan, dan ketelitian menjadi landasan utama dalam setiap layanan kami. Dengan menggunakan teknologi canggih dan tim ahli berpengalaman, kami mendedikasikan diri untuk memberikan solusi pemetaan yang mengubah pandangan menjadi realitas yang dapat diandalkan.\n\n"
                              "Kami tak hanya sekadar menawarkan layanan pemetaan dan survei berkualitas tinggi, tetapi juga menghasilkan produk kartografi inovatif yang memenuhi kebutuhan unik setiap klien kami. Setiap produk kami dibuat dengan teliti dan keahlian untuk memastikan kepuasan maksimal pelanggan."),
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
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Image.asset(
                      "assets/about_us.jpg",
                      width: 100,
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width < 897)
                  Div(
                    divison: Division(
                      colXL: 6,
                      colL: 6,
                      colM: 12,
                      colS: 12,
                      colXS: 12,
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      child: Column(
                        children: [
                          Text(
                            "PT. BINAV MAJU SEJAHTERA",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),
                          ),
                          // TODO : di ubah karena ini Text Contoh
                          Text(
                            "Vilook.id adalah sebuah perusahaan yang bergerak dalam menyediakan jasa visual identity profesional dan berkarakter . Dalam perjalanannya, kami telah banyak berdedikasi dan berkontribusi membantu para client untuk membangun citra brand yang kuat dan berkesan. Sehingga brand dari client yang kami handle menjadi lebih cepat naik kelas dalam hal identitas visualnya.\n\n"
                            "Kami percaya bahwa semua brand memiliki potensi untuk berkembang luar biasa. Oleh karena itu, identitas visual yang kuat adalah salah satu kunci terpenting untuk mencapai hal tersebut.\n\n"
                            "Kami telah banyak membantu para client dari berbagai jenis sektor (bisnis, pemerintah, kampus, swasta, organisasi, komunitas, UMKM, dll) dalam memperkuat citra brand-nya melalui desain grafis, foto, video, website, dll yang terkonsep, menarik dan berkarakter.",
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
