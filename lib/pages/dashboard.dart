import 'package:flutter/material.dart';
import 'package:foodie_ui/functions/helper_functions.dart';
import 'package:foodie_ui/widgets/home_search_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
        child: Container(
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
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0, 8),
                    child: Text(
                      'Food & Drinks',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
