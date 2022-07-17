import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     "Hi! I'm drawer.",
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          //   decoration: BoxDecoration(
          //     color: Colors.indigo,
          //   ),
          // ),

          UserAccountsDrawerHeader(
            accountName: Text("Suraj Pulami"),
            accountEmail: Text("surajpulami@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1460904577954-8fadb262612c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1090&q=80"),
            ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
