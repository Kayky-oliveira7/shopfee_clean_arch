import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationListWidget extends StatefulWidget {
  const InformationListWidget({Key? key}) : super(key: key);

  @override
  State<InformationListWidget> createState() =>
      _ProductInformationListWidgetState();
}

class _ProductInformationListWidgetState extends State<InformationListWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              _size(8, null),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffEFEBE9),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 9, right: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(),
                      _size(5.35, null),
                      Text(
                        "",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff3C3C3C),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }

  Widget _size(double? width, double? height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
