import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          SvgPicture.asset("assets/icon_phone.svg",
              height: 20, color: Colors.white),
          SizedBox(
            width: 5,
          ),
          Text(
            "085158426044",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
          SvgPicture.asset("assets/icon_mail.svg",
              height: 20, color: Colors.white),
          SizedBox(
            width: 5,
          ),
          Text(
            "fadillarizky294@gmail.com",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            "assets/icon_location.svg",
            height: 20,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Yogyakarta",
            style: TextStyle(color: Colors.white),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "assets/icon_youtube.svg",
                  height: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  "assets/icon_instagram.svg",
                  height: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  "assets/icon_tiktok.svg",
                  height: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
