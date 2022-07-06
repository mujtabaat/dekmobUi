import 'package:flutter/material.dart';
import 'package:responsive/responsive/desktopbody.dart';
import 'package:responsive/responsive/mobilebody.dart';
import 'package:responsive/responsive/responsive.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: responsive(mobilebody: mobilebody(), desktopbody: Desktop()),
      // backgroundColor:
      //     currentWidth < 600 ? Colors.deepPurple[300] : Colors.green[300],
      // body: Center(
      //   child: Text(currentWidth.toString()),
      // ),
    );
  }
}
