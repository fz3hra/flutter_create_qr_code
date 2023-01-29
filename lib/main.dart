import 'package:flutter/material.dart';
import 'package:flutter_create_qrcode/configs/routes.dart';
import 'package:flutter_create_qrcode/screens/create_scan_screen/create_web_qr_screen.dart';
import 'package:flutter_create_qrcode/screens/screen_exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.homeScreen,
      routes: {
        Routes.homeScreen: (context) => const HomePage(),
        Routes.createQrWebsite: (context) => const CreateWebQrScreen(),
        Routes.recentsScreen: (context) => const RecentsScreen(),
      },
    );
  }
}
