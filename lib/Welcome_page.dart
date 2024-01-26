import 'package:flutter/material.dart';
import 'package:quik_broker_admin/Helper/app_setting.dart';

class Welcome_page extends StatefulWidget {
  const Welcome_page({super.key});

  @override
  State<Welcome_page> createState() => _Welcome_pageState();
}

class _Welcome_pageState extends State<Welcome_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: Stack(
        children: [
          Image.asset(
            'images/Splash screen.jpg',
            width: width(context, 1),
            height: height(context, 1),
            fit: BoxFit.contain,
          )
        ],
      ),
    ));
  }
}
