import 'package:binav_company_profile/section/home.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PT. Binav Maju Sejahtera',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.blue.withOpacity(0.4)),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
