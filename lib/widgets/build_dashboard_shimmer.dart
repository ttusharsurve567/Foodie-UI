import 'package:flutter/material.dart';
import 'package:foodie_ui/widgets/home_search_bar.dart';
import 'package:foodie_ui/widgets/shimmer_widget.dart';

class BuildDashBoardShimmer extends StatelessWidget {
  const BuildDashBoardShimmer({
    Key key,
    @required this.width,
    @required this.listview_height,
    @required this.height,
    @required this.listview_height_1,
  }) : super(key: key);

  final double width;
  final double listview_height;
  final double height;
  final double listview_height_1;

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
              Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0, 8),
                  child:
                      ShimmerWidget.rectangular(height: 30, width: width / 2)),
              Container(
                width: width,
                height: listview_height,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      child: ShimmerWidget.rectangular(
                        height: 0,
                        width: width / 3,
                        shapeBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0, 8),
                  child:
                      ShimmerWidget.rectangular(height: 30, width: width / 2)),
              Container(
                  width: width,
                  height: listview_height_1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: ShimmerWidget.rectangular(
                          height: listview_height_1,
                          width: width / 1.4,
                          shapeBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      );
                    },
                    itemCount: 10,
                  )),
            ],
          ),
          Container(
            width: 100,
            child: ShimmerWidget.rectangular(height: 30),
            margin: EdgeInsets.only(right: 10),
          ),
        ],
      ),
    );
  }
}
