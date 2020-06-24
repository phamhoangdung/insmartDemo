import 'package:demoApp/components/navigation_bottom.dart';
import 'package:demoApp/insurance_screen/components/body.dart';
import 'package:demoApp/insurance_screen/components/drawer.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class InsuranceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Insmart"),
        centerTitle: true,
        // backgroundColor: Colors.white,
      ),
      body: Body(),
      drawer: BuildDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
