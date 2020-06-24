import 'package:demoApp/components/rounded_button.dart';
import 'package:demoApp/healthcare_screen/healthcare_screen.dart';
import 'package:demoApp/insurance_screen/insurance_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool pressAttention1 = true;
  bool pressAttention2 = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 33,
              color: Color(0xFF6DAED9).withOpacity(0.11),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InsuranceScreen();
              }));
              setState(() {
                pressAttention1 = !pressAttention1;
              });
            },
            child: Container(
              // padding: EdgeInsets.all(10),
              height: size.height * 0.1,
              width: size.width * 0.41,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: pressAttention1 ? Colors.indigo[800] : Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Text(
                "Insurance",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HealthCareScreen();
              }));
              setState(() {
                pressAttention2 = !pressAttention2;
              });
            },
            child: Container(
              // padding: EdgeInsets.all(0),
              height: size.height * 0.1,
              width: size.width * 0.41,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: pressAttention2 ? Colors.indigo[800] : Colors.grey,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Text(
                "Healthcare",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
