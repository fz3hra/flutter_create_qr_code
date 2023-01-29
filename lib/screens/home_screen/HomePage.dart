import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_create_qrcode/screens/screen_exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> widgets = const [
    CreateScanScreen(),
    QrListScreen(),
    RecentScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: widgets[currentIndex],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: (height * 0.020),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 16.0,
                color:
                    const Color.fromARGB(255, 194, 200, 244).withOpacity(0.30),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            child: BottomNavigationBar(
              onTap: (tabIndex) {
                setState(() {
                  currentIndex = tabIndex;
                });
              },
              currentIndex: currentIndex,
              selectedItemColor: const Color(0xFF6565FF),
              unselectedItemColor: const Color.fromARGB(255, 194, 200, 244),
              showUnselectedLabels: true,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(EvaIcons.edit2Outline),
                  label: "Create QR",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.qr_code_scanner_outlined),
                  label: "Scan QR",
                ),
                BottomNavigationBarItem(
                  icon: Icon(EvaIcons.clockOutline),
                  label: "Recent",
                ),
                BottomNavigationBarItem(
                  icon: Icon(EvaIcons.settings2Outline),
                  label: "Settings",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
