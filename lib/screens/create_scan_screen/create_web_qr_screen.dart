import 'package:flutter/material.dart';
import 'package:flutter_create_qrcode/widgets/widget_exports.dart';

class CreateWebQrScreen extends StatefulWidget {
  const CreateWebQrScreen({super.key});

  @override
  State<CreateWebQrScreen> createState() => _CreateWebQrScreenState();
}

class _CreateWebQrScreenState extends State<CreateWebQrScreen> {
  late TextEditingController _textEditingcontroller;
  @override
  void initState() {
    _textEditingcontroller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GenerateQrWidget(
      controller: _textEditingcontroller,
    );
  }
}
