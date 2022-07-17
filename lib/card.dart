import 'package:flutter/material.dart';
import 'package:myfirstapp/bgImage.dart';

class myCard extends StatelessWidget {
  const myCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          bgImage(),
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
    );
  }
}
