import 'package:deneme2/app_drawer.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.lime,
            size: 35,
          ),
          backgroundColor: Colors.black,
          title: Image.asset(
            "assets/images/logo.png",
            height: 100.0,
            width: 275.0,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.lime,
                size: 35,
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: Text('This is food page'),
          ),
        ),
      ),
    );
  }
}
