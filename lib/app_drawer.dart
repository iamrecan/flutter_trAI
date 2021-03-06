import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text(
                "iamrecan",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "iamrecan@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: const Color(0xffd5fe46),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xff030303),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/images/x.png'),
                ),
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.fastfood_outlined),
            title: Text("Food"),
          ),
          ListTile(
            leading: Icon(Icons.graphic_eq),
            title: Text("Performance"),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Calander"),
          ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text("Blog"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
    );
  }
}
