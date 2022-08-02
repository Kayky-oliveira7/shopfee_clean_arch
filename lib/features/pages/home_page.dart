import 'package:flutter/material.dart';
import 'package:shopfee_clean_arch/features/components/catalog-selection-widget/catalog_selection_widget.dart';
import 'package:shopfee_clean_arch/features/components/catalog/catalog_widget.dart';
import 'package:shopfee_clean_arch/features/components/list-product-widget/list_view_products_widget.dart';
import 'package:shopfee_clean_arch/features/components/product-information-list-widget/product_information_list_widget.dart';
import 'package:shopfee_clean_arch/features/components/search-bar-widget/search_bar_widget.dart';

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
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 304,
              child: Column(
                children: [
                  const SearcBarWidget(),
                  _size(16, null),
                  const CatalogWidget(),
                  _size(16, null),
                  const CatalogSelectionWidget(),
                  _size(8, null),
                  ProductInformationListWidget(),
                ],
              ),
            ),
            _size(16, null),
            const Expanded(child: ListViewProductsWidget()),
          ],
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
