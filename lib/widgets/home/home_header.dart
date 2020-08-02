import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortvideo/provider/top_bar_provider.dart';
import 'package:shortvideo/resources/dimen.dart';
import 'package:shortvideo/resources/strings.dart';

Widget homeHeader() {
  return Container(
    color: Colors.black.withOpacity(0.2),
    height: Dimen.headerHeight,
    child: Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Consumer<TopBarProvider>(
            builder: (context, top_bar_provider, child) {
              return InkWell(
                onTap: () {
                  top_bar_provider.currentIndex = 0;
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    AppStrings.followingString,
                    style: TextStyle(
                        color: top_bar_provider.currentIndex == 0
                            ? Colors.white
                            : Colors.white54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              );
            },
          ),
          Text("|",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
          Consumer<TopBarProvider>(
            builder: (context, top_bar_provider, child) {
              return InkWell(
                onTap: () {
                  top_bar_provider.currentIndex = 1;
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(AppStrings.forYouString,
                      style: TextStyle(
                          fontSize: 18,
                          color: top_bar_provider.currentIndex == 1
                              ? Colors.white
                              : Colors.white54,
                          fontWeight: FontWeight.w500)),
                ),
              );
            },
          )
        ],
      ),
    ),
  );
}
