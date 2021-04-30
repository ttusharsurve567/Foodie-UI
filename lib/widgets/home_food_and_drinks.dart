import 'package:flutter/material.dart';

class HomeFoodDrink extends StatelessWidget {
  double width;
  double listview_height_1;
  String restaurants;
  String type;
  String rating;
  HomeFoodDrink(this.width, this.listview_height_1, this.restaurants, this.type,
      this.rating);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print('Helo');
        },
        child: Container(
          width: width / 1.4,
          height: listview_height_1,
          margin: EdgeInsets.all(10),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: width / 1.4,
                height: listview_height_1 * 0.23,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: listview_height_1 * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                restaurants,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: listview_height_1 * 0.01,
                            ),
                            Container(
                              height: listview_height_1 * 0.1,
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                type,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                right: 10,
                              ),
                              child: Text(
                                rating,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green,
                                  border: Border.all(
                                      width: 3, color: Colors.green)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10, top: 2),
                              child: Text(
                                '',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/res.jpg'), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(60),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                )
              ]),
        ));
  }
}
