import 'package:flutter/material.dart';
import 'package:foodie_ui/functions/helper_functions.dart';
import 'package:foodie_ui/widgets/build_dashboard.dart';
import 'package:foodie_ui/widgets/build_dashboard_shimmer.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List items = [];
  List restaurants = [];
  List type = [];
  List rating = [];
  var _isLoading = false;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> loadData() async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(Duration(seconds: 2));
    items = List<String>.generate(10, (i) => "Pizza");
    restaurants = List<String>.generate(5, (i) => "Smugglers Vazha Pshavela");
    type = List<String>.generate(5, (i) => "Alcohol Shop");
    rating = List<String>.generate(5, (i) => "4.5");
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      actions: [
        IconButton(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.black.withAlpha(140),
            ),
            onPressed: () {})
      ],
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Text(timeMsg()[0], style: TextStyle(fontSize: 30)),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                timeMsg()[1],
                style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
              ),
              Text(
                'Tushar Surve',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
      elevation: 0,
    );
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final listview_height = height * 0.2;
    final listview_height_1 = height * 0.32;

    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.black.withAlpha(5),
      body: SingleChildScrollView(
        child: _isLoading
            ? BuildDashBoardShimmer(
                width: width,
                listview_height: listview_height,
                height: height,
                listview_height_1: listview_height_1,
              )
            : BuildDashBoard(
                width: width,
                listview_height: listview_height,
                items: items,
                height: height,
                listview_height_1: listview_height_1,
                restaurants: restaurants,
                type: type,
                rating: rating),
      ),
    );
  }
}
