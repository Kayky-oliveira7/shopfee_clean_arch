import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopfee_clean_arch/features/components/catalog-view-widget/catalog_widget.dart';
import 'package:shopfee_clean_arch/features/components/information_list_product_widget/information_list_product_widget.dart';
import 'package:shopfee_clean_arch/features/components/search-bar-widget/search_bar_widget.dart';
import 'package:shopfee_clean_arch/features/pages/coffee_page.dart';
import 'package:shopfee_clean_arch/features/pages/non_coffee_page.dart';
import 'package:shopfee_clean_arch/features/pages/pastry_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 3, vsync: this);
  }

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _size(8, null),
                    const SearcBarWidget(),
                    _size(16, null),
                    const SizedBox(
                      height: 137,
                      child: CatalogWidget(),
                    ),
                    _size(8, null),
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
                    _size(8, null),
                    const InformationListProductWidget()
                  ],
                ),
              ),
              _size(16, null),
              Expanded(
                child: TabBarView(
                  controller: tabcontroller,
                  children: const [
                    CoffeePage(),
                    NonCoffeePage(),
                    PastryPage(),
                  ],
                ),
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
