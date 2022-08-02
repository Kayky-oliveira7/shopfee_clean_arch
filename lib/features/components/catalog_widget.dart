import 'package:flutter/material.dart';

class CatalogWidget extends StatelessWidget {
  const CatalogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 137,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          child: Image.asset(
            "assets/images/coffee_image.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
