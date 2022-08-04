import 'package:flutter/material.dart';

class InformationListProductWidget extends StatelessWidget {
  final String imageIcon;
  final String text;
  const InformationListProductWidget(
      {Key? key, required this.imageIcon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 13, right: 8),
      decoration: const BoxDecoration(
        color: Color(0xffEFEBE9),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      height: 34,
      child: Row(
        children: [
          Image.asset(
            imageIcon,
            color: Colors.black,
          ),
          _size(5.34, null),
          Text(text),
        ],
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
