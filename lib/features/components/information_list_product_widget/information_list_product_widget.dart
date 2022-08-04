import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationListProductWidget extends StatelessWidget {
  final String imageIcon;
  final String text;
  const InformationListProductWidget(
      {Key? key, required this.imageIcon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Row(
          children: [
            Image.asset(imageIcon),
            Text(text),
          ],
        ),
      ),
    );
  }

  Widget _size(double? width, double? height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
