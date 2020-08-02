import 'package:flutter/material.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/types/gf_loader_type.dart';

class LoaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: GFLoader(
          type: GFLoaderType.circle,
          loaderColorOne: Colors.blueAccent,
          loaderColorTwo: Colors.black,
          loaderColorThree: Colors.pink,
        ),
      ),
    );
  }
}
