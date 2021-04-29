import 'package:flutter/material.dart';

class HomeSpecial extends StatelessWidget {
  double width;
  double listview_height;
  String name;
  HomeSpecial(this.width, this.listview_height, this.name);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Helo');
      },
      child: Container(
        width: width / 3,
        margin: EdgeInsets.all(8),
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/pizza.png',
                ),
                height: listview_height * 0.5,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(60),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                )
              ]),
        ),
      ),
    );
  }
}
