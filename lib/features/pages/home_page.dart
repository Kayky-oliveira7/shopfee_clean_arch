import 'package:flutter/material.dart';
import 'package:shopfee_clean_arch/features/components/catalog-selection-widget/catalog_selection_widget.dart';
import 'package:shopfee_clean_arch/features/components/list-product-widget/list_view_products_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 304,
                child: const CatalogSelectionWidget(),
              ),
              _size(16, null),
              const Expanded(
                child: ListViewProductsWidget(),
              ),
            ],
          ),
        ),
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
