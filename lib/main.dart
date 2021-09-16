import 'package:flutter/material.dart';

import 'login_page.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  int ak = 23;
  num aksh = 23.4;
  String name = "akshai";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
          brightness: Brightness.dark, primarySwatch: Colors.deepOrange),
      // initialRoute: "/Home",
      routes: {
        "/Login": (context) => LoginPage(),
        "/": (context) => HomePage(),
      },
    );
  }
}
