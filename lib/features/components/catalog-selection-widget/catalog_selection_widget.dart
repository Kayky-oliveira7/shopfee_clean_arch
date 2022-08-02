import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogSelectionWidget extends StatelessWidget {
  const CatalogSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DefaultTabController(
        length: 3,
        child: TabBar(
          indicatorColor: const Color(0xff5D4037),
          labelColor: const Color(0xff5D4037),
          labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          tabs: const [
            Text("Coffee"),
            Text("Non Coffee"),
            Text("Pastry"),
          ],
        ),
      ),
    );
  }
}
