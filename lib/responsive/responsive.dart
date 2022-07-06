import 'package:flutter/material.dart';
import 'package:responsive/responsive/dimension.dart';

class responsive extends StatelessWidget {
  final Widget mobilebody;
  final Widget desktopbody;

  const responsive({
    Key? key,
    required this.mobilebody,
    required this.desktopbody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobilewidth) {
        return mobilebody;
      } else {
        return desktopbody;
      }
    });
  }
}
