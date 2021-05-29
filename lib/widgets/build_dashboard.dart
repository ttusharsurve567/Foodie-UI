import 'package:flutter/material.dart';
import 'package:foodie_ui/widgets/home_food_and_drinks.dart';
import 'package:foodie_ui/widgets/home_search_bar.dart';
import 'package:foodie_ui/widgets/home_specials_list.dart';

class BuildDashBoard extends StatelessWidget {
  const BuildDashBoard({
    Key key,
    @required this.width,
    @required this.listview_height,
    @required this.items,
    @required this.height,
    @required this.listview_height_1,
    @required this.restaurants,
    @required this.type,
    @required this.rating,
  }) : super(key: key);

  final double width;
  final double listview_height;
  final List items;
  final double height;
  final double listview_height_1;
  final List restaurants;
  final List type;
  final List rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeSearchBar(),
              const Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0, 8),
                child: Text(
                  'Specials For You',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
              ),
              Container(
                width: width,
                height: listview_height,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeSpecial(width, listview_height, items[index]);
                  },
                  itemCount: items.length,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0, 8),
                child: const Text(
                  'Food & Drinks',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
              ),
              Container(
                  width: width,
                  height: listview_height_1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return HomeFoodDrink(width, listview_height_1,
                          restaurants[index], type[index], rating[index]);
                    },
                    itemCount: restaurants.length,
                  )),
            ],
          ),
          Container(
            width: 103,
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
