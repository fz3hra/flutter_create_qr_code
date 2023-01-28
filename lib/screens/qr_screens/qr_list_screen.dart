import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QrListScreen extends StatelessWidget {
  const QrListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Scan QR Code",
          style: TextStyle(
            fontFamily: 'poppins_bold',
            fontSize: 24,
          ),
        ),
        Gap(8),
        Text(
          "Scan QR Code",
          style: TextStyle(
            fontFamily: 'poppins_regular',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
