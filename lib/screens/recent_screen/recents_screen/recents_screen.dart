import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_create_qrcode/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class RecentsScreen extends StatefulWidget {
  const RecentsScreen({super.key});

  @override
  State<RecentsScreen> createState() => _RecentsScreenState();
}

class _RecentsScreenState extends State<RecentsScreen> {
  @override
  Widget build(BuildContext context) {
    var icon, color, items;
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    icon = arguments["icon"];
    color = arguments["color"];
    items = arguments["items"];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 243, 234, 245),
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                EvaIcons.arrowIosBackOutline,
                color: Color(0xFF6565FF),
                size: 32,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 243, 234, 245),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recent Website \nQR code",
                    style: TextStyle(
                      fontFamily: 'poppins_bold',
                      fontSize: 24,
                    ),
                  ),
                  const Gap(32),
                  ListView.builder(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      var recents = items[index];
                      return Dismissible(
                        key: Key(recents.text),
                        direction: DismissDirection.endToStart,
                        onDismissed: (direction) {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                        background: Container(
                          margin: const EdgeInsets.only(
                            bottom: 16,
                          ),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE6062),
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                          child: const Icon(
                            Icons.delete_outline_outlined,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        child: RecentsWidget(
                          recents: recents,
                          icon: icon,
                          color: color,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
