import 'package:flutter/material.dart';

class InformationListProductWidget extends StatelessWidget {
  final String imageIcon;
  final String text;
  const InformationListProductWidget(
      {Key? key, required this.imageIcon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        height: 34,
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
