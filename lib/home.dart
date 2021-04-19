import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_ui/pages/dashboard.dart';
import 'package:foodie_ui/pages/liked.dart';
import 'package:foodie_ui/pages/profile.dart';
import 'package:foodie_ui/pages/saved.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [Dashboard(), Liked(), Saved(), Profile()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  Future<void> _takePicture() async {
    final imageFile = await ImagePicker().getImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    double mediaquery = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        height: 72.0,
        width: 72.0,
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          elevation: 4,
          child: Icon(
            Icons.camera,
            size: 50,
          ),
          onPressed: _takePicture,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 7,
        child: Container(
          height: 65,
          child: Row(
            children: [
              Row(
                children: [
                  MaterialButton(
                    shape: StadiumBorder(),
                    minWidth: mediaquery / 5,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Icon(Icons.home,
                            color: currentTab == 0
                                ? Colors.red
                                : Colors.grey.shade400),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.red
                                  : Colors.grey.shade400),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    shape: StadiumBorder(),
                    minWidth: mediaquery / 5,
                    onPressed: () {
                      setState(() {
                        currentScreen = Liked();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 13,
                        ),
                        FaIcon(FontAwesomeIcons.heart,
                            color: currentTab == 1
                                ? Colors.red
                                : Colors.grey.shade400),
                        Text(
                          'Liked',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Colors.red
                                  : Colors.grey.shade400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: mediaquery / 5,
              ),
              Row(
                children: [
                  MaterialButton(
                    shape: StadiumBorder(),
                    minWidth: mediaquery / 5,
                    onPressed: () {
                      setState(() {
                        currentScreen = Saved();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Icon(Icons.save,
                            color: currentTab == 2
                                ? Colors.red
                                : Colors.grey.shade400),
                        Text(
                          'Saved',
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Colors.red
                                  : Colors.grey.shade400),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    shape: StadiumBorder(),
                    minWidth: mediaquery / 5,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Icon(Icons.account_circle_rounded,
                            color: currentTab == 3
                                ? Colors.red
                                : Colors.grey.shade400),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Colors.red
                                  : Colors.grey.shade400),
                        )
                      ],
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
