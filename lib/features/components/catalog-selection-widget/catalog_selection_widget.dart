import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopfee_clean_arch/features/components/catalog-view-widget/catalog_widget.dart';
import 'package:shopfee_clean_arch/features/components/information-list-widget/information_list_widget.dart';
import 'package:shopfee_clean_arch/features/components/search-bar-widget/search_bar_widget.dart';

class CatalogSelectionWidget extends StatefulWidget {
  const CatalogSelectionWidget({Key? key}) : super(key: key);

  @override
  State<CatalogSelectionWidget> createState() => _CatalogSelectionWidgetState();
}

class _CatalogSelectionWidgetState extends State<CatalogSelectionWidget>
    with TickerProviderStateMixin {
  TabController? tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _size(8),
        const SearcBarWidget(),
        _size(16),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 137,
          child: TabBarView(
            controller: tabcontroller,
            children: const [
              CatalogWidget(image: "assets/images/coffee_image.png"),
              CatalogWidget(image: "assets/images/coffee_image.png"),
              CatalogWidget(image: "assets/images/coffee_image.png"),
            ],
          ),
        ),
        TabBar(
          labelColor: const Color(0xff5D4037),
          indicatorColor: const Color(0xff5D4037),
          indicatorWeight: 4,
          controller: tabcontroller,
          labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          tabs: const [
            Tab(
              text: "Coffee",
            ),
            Tab(
              text: "Non Coffee",
            ),
            Tab(
              text: "Pastry",
            ),
          ],
        ),
        _size(6),
        const InformationListWidget(),
      ],
    );
  }

  Widget _size(double height) {
    return SizedBox(
      height: height,
    );
  }
}
