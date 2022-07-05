import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/more_screen.dart';
import 'package:flutter_application_1/widget/bottom_bar.dart';
import 'package:flutter_application_1/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController tabController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NETFLIX_clone',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              home_screen(),
              Container(),
              Container(),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: bottom_bar(),
        ),
      ),
    );
  }
}
