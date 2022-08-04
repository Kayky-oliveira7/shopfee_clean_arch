import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSelectionWidget extends StatefulWidget {
  const ProductSelectionWidget({Key? key}) : super(key: key);

  @override
  State<ProductSelectionWidget> createState() => _ProductSelectionWidgetState();
}

class _ProductSelectionWidgetState extends State<ProductSelectionWidget>
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
      ],
    );
  }

  Widget _size(double height) {
    return SizedBox(
      height: height,
    );
  }
}
