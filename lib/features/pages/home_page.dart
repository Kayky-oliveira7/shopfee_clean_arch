import 'package:flutter/material.dart';
import 'package:shopfee_clean_arch/features/components/catalog-view-widget/catalog_widget.dart';
import 'package:shopfee_clean_arch/features/components/information_list_product_widget/information_list_product_widget.dart';
import 'package:shopfee_clean_arch/features/components/list-product-widget/list_view_products_widget.dart';
import 'package:shopfee_clean_arch/features/components/product_selection_widget/product_selection_widget.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    _size(8, null),
                    const SearcBarWidget(),
                    _size(8, null),
                    const SizedBox(
                      height: 137,
                      child: CatalogWidget(
                        image: "assets/images/coffee_image.png",
                      ),
                    ),
                  ],
                ),
              ),
              _size(16, null),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const ProductSelectionWidget(),
                    _size(8, null),
                    Row(
                      children: [
                        const InformationListProductWidget(
                          imageIcon: "assets/icons/filter-icon.png",
                          text: "Filter",
                        ),
                        _size(null, 8),
                        const InformationListProductWidget(
                          imageIcon: "assets/icons/rating-icon.png",
                          text: "Rating 4.5+",
                        ),
                        _size(null, 8),
                        const InformationListProductWidget(
                          imageIcon: "assets/icons/price-icon.png",
                          text: "Price",
                        ),
                        _size(null, 8),
                        const InformationListProductWidget(
                          imageIcon: "assets/icons/promotion-icon.png",
                          text: "Promotion",
                        ),
                      ],
                    )
                  ],
                ),
              ),
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
