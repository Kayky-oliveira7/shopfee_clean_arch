import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearcBarWidget extends StatelessWidget {
  const SearcBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 16, top: 8),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "What would you like to drink today?",
                labelStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color(0xffCACACA)),
                suffixIcon: const Icon(
                  Icons.search,
                  size: 24,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xffD7CCC8),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
