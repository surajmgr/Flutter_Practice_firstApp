import 'package:flutter/material.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Demo Home',
          style: TextStyle(
            fontFamily: 'Georgia',
          ),
        ),
      ),
      body: Container(),
      drawer: Drawer(
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
                    "https://static.zerochan.net/Narberal.Gamma.full.2394509.jpg"),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
