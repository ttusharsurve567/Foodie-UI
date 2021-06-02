import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_ui/home.dart';
import 'package:foodie_ui/pages/dashboard.dart';
import 'package:foodie_ui/pages/nearme.dart';
import 'package:foodie_ui/pages/profile.dart';
import 'package:foodie_ui/pages/saved.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie',
      home: Home(),
      routes: {
        Dashboard.routeName: (ctx) => Dashboard(),
        NearMe.routeName: (ctx) => NearMe(),
        Profile.routeName: (ctx) => Profile(),
        Saved.routeName: (ctx) => Saved()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
