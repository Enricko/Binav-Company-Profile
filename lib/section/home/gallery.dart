import 'package:binav_company_profile/utils/client_logo.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<Map<String, String>> listGallery = [
    {
      "image" : "assets/gallery/gallery1.jpg",
    },
    {
      "image" : "assets/gallery/gallery2.jpg",
    },
    {
      "image" : "assets/gallery/gallery3.jpg",
    },
    {
      "image" : "assets/gallery/gallery4.jpeg",
    },
    {
      "image" : "assets/gallery/gallery5.jpeg",
    },
    {
      "image" : "assets/gallery/gallery6.jpg",
    },
    {
      "image" : "assets/gallery/gallery7.jpg",
    },
    {
      "image" : "assets/gallery/gallery8.jpg",
    },
    {
      "image" : "assets/gallery/gallery9.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff6f6f6),
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "Gallery",
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
              children: listGallery.map(
                (e) {
                  return Div(
                    divison: Division(
                      colXL: 3,
                      colL: 4,
                      colM: 6,
                      colS: 6,
                      colXS: 12,
                    ),
                    child: SizedBox(
                      height: 250,
                      child: Container(
                        height: 250,
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 212, 212, 212),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color.fromARGB(255, 46, 46, 46), width: 1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ],
                          image: DecorationImage(
                            image: AssetImage(e['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
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
