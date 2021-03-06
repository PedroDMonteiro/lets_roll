import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lets_roll/models/User.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  // final String title;
  // final double height = 60.0;

  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context).settings.arguments;
    const double radius = 60.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: (user.profilePhoto == null
                  ? CircleAvatar(
                      radius: radius,
                      backgroundImage: AssetImage(user.profilePhoto),
                    )
                  : CircleAvatar(
                      radius: radius,
                      child: Icon(
                        Icons.person,
                        size: radius,
                      ),
                    )),
            ),
            Text(
              user.username,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
