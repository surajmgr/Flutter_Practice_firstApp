import 'package:flutter/material.dart';

class bgImage extends StatelessWidget {
  const bgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg.jpg",
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height,
      color: Colors.black.withOpacity(0.5),
      colorBlendMode: BlendMode.darken,
    );
  }
}
