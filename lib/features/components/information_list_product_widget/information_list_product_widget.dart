import 'package:flutter/material.dart';

class CustomButtonListWidget extends StatelessWidget {
  final String imageIcon;
  final String text;
  const CustomButtonListWidget(
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

class InformationListProductWidget extends StatelessWidget {
  const InformationListProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomButtonListWidget(
            imageIcon: "assets/icons/filter-icon.png",
            text: "Filter",
          ),
          _size(null, 5),
          const CustomButtonListWidget(
            imageIcon: "assets/icons/rating-icon.png",
            text: "Rating 4.5+",
          ),
          _size(null, 5),
          const CustomButtonListWidget(
            imageIcon: "assets/icons/price-icon.png",
            text: "Price",
          ),
          _size(null, 5),
          const CustomButtonListWidget(
            imageIcon: "assets/icons/promotion-icon.png",
            text: "Promotion",
          ),
          _size(null, 5),
          const CustomButtonListWidget(
            imageIcon: "assets/icons/promotion-icon.png",
            text: "Promotion",
          ),
          _size(null, 5),
          const CustomButtonListWidget(
            imageIcon: "assets/icons/promotion-icon.png",
            text: "Promotion",
          ),
        ],
      ),
    );
  }

  Widget _size(double? height, double? width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
