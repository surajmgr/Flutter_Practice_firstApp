import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My first app",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My lookApp"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.blueAccent,
                blurRadius: 5,
                offset: Offset(2.0, 5.0),
              ),
            ],
            color: Colors.amberAccent,
            gradient: const LinearGradient(
              colors: [Colors.red, Colors.yellow],
            ),
          ),
          child: const Text(
            "I'm a Box",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
