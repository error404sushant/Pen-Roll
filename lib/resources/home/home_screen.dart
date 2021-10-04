import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  late AnimationController animationController;

  @override
  void initState() {

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: body(),
    );
  }

  Widget body() {
    return Stack(
      children: [
        Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  child: const Center(
                      child: Text(
                    "North",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
                  width: 200,
                  color: Colors.greenAccent,
                  height: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  child: const Center(
                      child: Text(
                    "South",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
                  width: 200,
                  color: Colors.red,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  child: const RotatedBox(
                    quarterTurns: 3,
                    child: Center(
                        child: Text(
                      "East",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  width: 50,
                  color: Colors.white,
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  child: const RotatedBox(
                    quarterTurns: 1,
                    child: Center(
                        child: Text(
                      "West",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  width: 50,
                  color: Colors.cyan,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
        Center(
            child: AnimatedBuilder(
                animation: animationController.view,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: animationController.value * 3 * pi,
                    child: InkWell(
                      onTap: (){

                      },
                      child: Image.asset(
                        'assets/pen.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                  );
                },
                ))
      ],
    );
  }
}
