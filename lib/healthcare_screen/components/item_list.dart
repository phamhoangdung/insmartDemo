import 'package:demoApp/healthcare_screen/components/item_card.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "McDonald's",
            press: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return DetailScreen();
              // }));
            },
          ),
        ],
      ),
    );
  }
}
