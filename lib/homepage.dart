import 'package:asevestipos/components/desktop_body.dart';
import 'package:asevestipos/components/mobile_body.dart';
import 'package:asevestipos/components/responsiive_layout.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: ResponsiveLayout(
          mobileBody: const MyMobileBody(),
          desktopBody: const MyDesktopBody(),
        ),
      ),
    );
  }
}