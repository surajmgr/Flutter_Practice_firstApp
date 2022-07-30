import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/drawer.dart';
import 'package:myfirstapp/widgets/textWidget.dart';

class nextPage extends StatefulWidget {
  const nextPage({Key? key}) : super(key: key);

  @override
  State<nextPage> createState() => _nextPageState();
}

class _nextPageState extends State<nextPage> {
  final _nameController = TextEditingController();
  final _seriesController = TextEditingController();
  var myText, srText;

  @override
  void initState() {
    super.initState();
    myText = "Change Me!";
    srText = "Name of Series.";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Interactive Page',
          style: TextStyle(
            fontFamily: 'Georgia',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/home");
            },
            icon: const Icon(Icons.keyboard_return_sharp),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                txtWid(
                    myText: myText,
                    srText: srText,
                    nameController: _nameController,
                    seriesController: _seriesController),
                ElevatedButton(
                  onPressed: () {
                    myText = _nameController.text;
                    srText = _seriesController.text;
                    setState(() {});
                  },
                  child: const Text("Edit!"),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: const myDrawer(),
    );
  }
}
