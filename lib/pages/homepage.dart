import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int ak = 23;
  final num aksh = 22.4;
  final String name = "akshai";
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JEE NOTES APP"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(child: Text('my name is akshai $ak $aksh $name')),
      ),
    );
  }
}
