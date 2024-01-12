import 'package:flutter/material.dart';

class LogoClient extends StatelessWidget {
  final String path;

  const LogoClient({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 100,
        child: Image.asset(
          path,
          height: 50,
        ));
  }
}