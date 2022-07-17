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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me!";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Demo Home',
          style: TextStyle(
            fontFamily: 'Georgia',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/bg.jpg",
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  myText,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your name.",
                      labelText: "Name",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
