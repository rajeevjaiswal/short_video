import 'package:flutter/material.dart';
import 'package:shortvideo/resources/dimen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Divider(
          height: 2,
          color: Colors.grey[700],
        ),
        Container(
          height: 47,
          color: Colors.black.withOpacity(0.2),
          child: Padding(
              padding: EdgeInsets.only(top: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/ic_home.png",
                          color: Colors.white,
                          height: 25,
                          width: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimen.textSpacing),
                          child: Text(
                            "Home",
                            style: TextStyle(
                                fontSize: Dimen.bottomNavigationTextSize,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/ic_search.png",
                          color: Colors.white,
                          height: 25,
                          width: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimen.textSpacing),
                          child: Text(
                            "Discover",
                            style: TextStyle(
                                fontSize: Dimen.bottomNavigationTextSize,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 45.0,
                            height: 32.0,
                            child: Stack(children: [
                              /*Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 250, 45, 108),
                                      borderRadius: BorderRadius.circular(
                                          Dimen.createButtonBorder))),
                              Container(
                                  margin: EdgeInsets.only(right: 10.0),
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 32, 211, 234),
                                      borderRadius: BorderRadius.circular(
                                          Dimen.createButtonBorder))),*/
                              Center(
                                  child: Container(
                                height: double.infinity,
                                width: 38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimen.createButtonBorder)),
                                child: Image.asset("assets/images/ic_add.png"),
                              )),
                            ]))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/ic_inbox.png",
                          color: Colors.white,
                          height: 25,
                          width: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimen.textSpacing),
                          child: Text(
                            "Inbox",
                            style: TextStyle(
                                fontSize: Dimen.bottomNavigationTextSize,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/ic_me.png",
                          color: Colors.white,
                          height: 25,
                          width: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimen.textSpacing),
                          child: Text(
                            "Me",
                            style: TextStyle(
                                fontSize: Dimen.bottomNavigationTextSize,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
