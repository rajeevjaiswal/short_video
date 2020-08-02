import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortvideo/pages/main_page.dart';
import 'package:shortvideo/provider/top_bar_provider.dart';
import 'package:shortvideo/provider/video_data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TopBarProvider>(
            create: (context) => TopBarProvider()),
        ChangeNotifierProvider<VideoDataProvider>(
            create: (context) => VideoDataProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
