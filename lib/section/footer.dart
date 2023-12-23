import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF283646),
      child: Responsive(
        // runAlignment: WrapAlignment.start,
        alignment: WrapAlignment.start,
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
              child:  Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/logo_transparent.png",
                      width: 100,
                    ),
                    Text("Vilook.id adalah sebuah perusahaan yang bergerak dalam menyediakan jasa visual identity profesional dan berkarakter . Dalam perjalanannya, kami telah banyak berdedikasi dan berkontribusi membantu para client untuk membangun citra brand yang kuat dan berkesan. Sehingga brand dari client yang kami handle menjadi lebih cepat naik kelas dalam hal identitas visualnya Kami percaya bahwa semua brand memiliki potensi untuk berkembang luar biasa.",style: TextStyle(color: Colors.white),),

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
                    Text("About"),
                    Text("About"),
                    Text("Services"),
                    Text("Portofolio"),
                    Text("How to order"),
                    Text("Contact"),
                  ],),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About"),
                      Text("About"),
                      Text("Services"),
                      Text("Portofolio"),
                      Text("How to order"),
                      Text("Contact"),
                    ],),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About"),
                      Text("About"),
                      Text("Services"),
                      Text("Portofolio"),
                      Text("How to order"),
                      Text("Contact"),
                    ],),
                ],
              )
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
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/logo_transparent.png",
                      width: 100,
                    ),
                    Text("Vilook.id adalah sebuah perusahaan yang bergerak dalam menyediakan jasa visual identity profesional dan berkarakter . Dalam perjalanannya, kami telah banyak berdedikasi dan berkontribusi membantu para client untuk membangun citra brand yang kuat dan berkesan. Sehingga brand dari client yang kami handle menjadi lebih cepat naik kelas dalam hal identitas visualnya Kami percaya bahwa semua brand memiliki potensi untuk berkembang luar biasa.",style: TextStyle(color: Colors.white),),

                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
