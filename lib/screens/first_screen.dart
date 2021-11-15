import 'package:flutter/material.dart';
import 'package:random_background_color/modules/color_randomizer.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Color backgroundColor = Colors.white70;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          backgroundColor = ColorRandomizer().randomColor;
        });
      },
      child: Container(
        decoration: const BoxDecoration(),
        child: Scaffold(
          backgroundColor: backgroundColor,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Center(
              child: Text('Tap to change background color'),
            ),
          ),
          body: Center(
            child: Text(
              'Hi there',
              style: TextStyle(
                fontSize: 50.0,
                color: ColorRandomizer().complementaryColor(
                  backgroundColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
