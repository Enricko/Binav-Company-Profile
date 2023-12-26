import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CarouselSlider(
          items: [
            // Tambahkan item carousel di sini
            CarouselItem(
              width: width,
              height: height,
              image: AssetImage("carousel.jpg"),
              titleText: "Selamat Datang di PT. Binav Maju Sejahtera",
              text:
                  "Solusi canggih mengelola armada secara efisien, meningkatkan produktivitas, dan meningkatkan keamanan operasional",
              // buttonEnabled: true,
              // buttonText: "Selengkapnya",
              // buttonTap: () {},
            ),
            CarouselItem(
              width: width,
              height: height,
              image: AssetImage("carousel1.jpeg"),
              text:
                  "Solusi canggih mengelola armada secara efisien, meningkatkan produktivitas, dan meningkatkan keamanan operasional",
              buttonEnabled: true,
              buttonText: "Selengkapnya",
              buttonTap: () {},
            ),
            // Tambahkan item lain sesuai kebutuhan
          ],
          carouselController: _controller,
          options: CarouselOptions(
            height: height >= 600 ? height : 600,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 10),
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
          ),
        ),
        if (width > 700)
          HoverButtonCarousel(
            alignment: Alignment.centerLeft,
            onTap: () {
              _controller.previousPage();
            },
            icon: Icons.chevron_left,
            defaultColor: Colors.white,
            hoverColor: const Color.fromARGB(255, 196, 195, 195),
          ),
        if (width > 700)
          HoverButtonCarousel(
            alignment: Alignment.centerRight,
            onTap: () {
              _controller.nextPage();
            },
            icon: Icons.chevron_right,
            defaultColor: Colors.white,
            hoverColor: const Color.fromARGB(255, 196, 195, 195),
          ),
      ],
    );
  }
}

class CarouselItem extends StatefulWidget {
  const CarouselItem({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    this.titleText,
    required this.text,
    this.buttonEnabled = false,
    this.buttonText = "",
    this.buttonTap,
  });

  final double width;
  final double height;
  final AssetImage image;
  final String? titleText;
  final String text;
  final bool buttonEnabled;
  final String buttonText;
  final VoidCallback? buttonTap;

  @override
  State<CarouselItem> createState() => _CarouselItemState();
}

class _CarouselItemState extends State<CarouselItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height >= 600 ? widget.height : 600,
      padding: EdgeInsets.symmetric(
          horizontal: widget.width > 700 ? widget.width / 5 : 50, vertical: widget.width > 700 ? 200 : 100),
      decoration: BoxDecoration(
        color: Color.fromARGB(196, 0, 0, 0),
        image: DecorationImage(
          image: widget.image,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.center,
        child: SizedBox(
          width: widget.width > 800 ? widget.width * 1 / 1.5 : widget.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.titleText != null)
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "${widget.titleText!.toUpperCase()}",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Colors.white),
                        ),
                        SizedBox(
                          width: 150,
                          child: Divider(
                            thickness: 3,
                            indent: 20,
                            endIndent: 20,
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 240, 240, 240),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              if (widget.buttonEnabled)
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape:
                            MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                    onPressed: widget.buttonTap,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.buttonText,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class HoverButtonCarousel extends StatefulWidget {
  final IconData icon;
  final Alignment alignment;
  final Color defaultColor;
  final Color hoverColor;
  final VoidCallback onTap;

  HoverButtonCarousel({
    required this.icon,
    required this.alignment,
    required this.defaultColor,
    required this.hoverColor,
    required this.onTap,
  });

  @override
  _HoverButtonCarouselState createState() => _HoverButtonCarouselState();
}

class _HoverButtonCarouselState extends State<HoverButtonCarousel> with SingleTickerProviderStateMixin {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: GestureDetector(
        onTap: widget.onTap,
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
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 3,
                  style: BorderStyle.solid,
                  color: isHovered ? widget.hoverColor : widget.defaultColor,
                ),
              ),
              child: Icon(
                widget.icon,
                size: 20,
                color: isHovered ? widget.hoverColor : widget.defaultColor,
              ),
            ),
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
