import 'package:flutter/material.dart';

class CatalogSelectionWidget extends StatelessWidget {
  const CatalogSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: DefaultTabController(
        length: 3,
        child: TabBar(
          tabs: [
            Text("Opa"),
            Text("Opu"),
            Text("Ope"),
          ],
        ),
      ),
    );
  }
}
