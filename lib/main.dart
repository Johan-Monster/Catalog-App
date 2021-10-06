import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/util/routes.dart';
import 'package:intro/widgets/themes.dart';

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
      // debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),

      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.HomeRoute,
      // initialRoute: MyRoutes.LoginRoute,
      routes: {
        MyRoutes.LoginRoute: (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
      },
    );
  }
}
