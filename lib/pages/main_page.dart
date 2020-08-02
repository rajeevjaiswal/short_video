import 'package:flutter/material.dart';
import 'package:shortvideo/bottom_nav_bar.dart';
import 'package:shortvideo/widgets/home/home_header.dart';

import 'home_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      bottom: true,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            HomeScreen(),
            BottomNavigation(),
            homeHeader(),
          ],
        ),
      ),
    );
  }
}
