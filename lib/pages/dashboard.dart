import 'package:flutter/material.dart';
import 'package:foodie_ui/functions/helper_functions.dart';

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

    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.black.withAlpha(5),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
