import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Category.dart';

class SkatePage extends StatefulWidget {
  SkatePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SkatePageState createState() => _SkatePageState();
}

class _SkatePageState extends State<SkatePage> {
  double height = 60.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skate'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Category(
              icon: Icons.calendar_today,
              height: this.height,
              name: 'Events',
            ),
            Category(
              icon: Icons.people,
              height: this.height,
              name: 'Groups',
            ),
            Category(
              icon: Icons.map,
              height: this.height,
              name: 'Places',
            ),
            Category(
              height: this.height,
              name: 'Products',
            ),
          ],
        ),
      ),
    );
  }
}
