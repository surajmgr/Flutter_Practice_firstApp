import 'package:flutter/material.dart';

class txtWid extends StatelessWidget {
  const txtWid({
    Key? key,
    required this.myText,
    required this.srText,
    required TextEditingController nameController,
    required TextEditingController seriesController,
  })  : _nameController = nameController,
        _seriesController = seriesController,
        super(key: key);

  final myText;
  final srText;
  final TextEditingController _nameController;
  final TextEditingController _seriesController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/bg.jpg",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          myText == "" ? "Change Me!" : myText,
          style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          srText == "" ? "Name of Series" : srText,
          style: const TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _nameController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter something...",
            labelText: "Name",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _seriesController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter the name of series...",
            labelText: "Series",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
