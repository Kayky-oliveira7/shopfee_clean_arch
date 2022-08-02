import 'package:flutter/material.dart';

class ProductInformationListWidget extends StatelessWidget {
  const ProductInformationListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            height: 30,
            color: Colors.red,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
