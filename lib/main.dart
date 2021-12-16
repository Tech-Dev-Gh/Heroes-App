import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(const HeroesApp());

class HeroesApp extends StatelessWidget {
  const HeroesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Heroes App",
      theme: ThemeData(
        fontFamily: "PaletteMosaic",
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black45,
                offset: Offset(1.0, 5.0),
              ),
            ],
          ),
        ),
      ),
      home: const Home(),
    );
  }
}
