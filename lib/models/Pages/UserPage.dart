import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../Category.dart';

class UserPage extends StatelessWidget {
  // final String title;
  final double height = 60.0;

  UserPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('User'),
    );
  }
}