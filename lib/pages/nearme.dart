import 'package:flutter/material.dart';

class NearMe extends StatefulWidget {
  @override
  _NearMeState createState() => _NearMeState();
}

class _NearMeState extends State<NearMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withAlpha(5),
      body: Center(
        child: Text('Near Me'),
      ),
    );
  }
}
