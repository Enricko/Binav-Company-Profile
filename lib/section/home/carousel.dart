import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(children: [
      CarouselSlider(
        items: [
          // Tambahkan item carousel di sini
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          // Tambahkan item lain sesuai kebutuhan
        ],
        options: CarouselOptions(
          height: 500,
          enableInfiniteScroll: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          viewportFraction: 1.0,
        ),
      ),
      Container(
          width: width,
          height: 500,
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF727272), Color(0xFFFFFF)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 1 / 2,
                child: Text(
                  "Solusi canggih mengelola armada secara efisien, meningkatkan produktivitas, dan meningkatkan keamanan operasional",
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Selengkapnya",style: TextStyle(color: Colors.white,fontSize: 16),),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ],
          ))
    ]);
  }
}
