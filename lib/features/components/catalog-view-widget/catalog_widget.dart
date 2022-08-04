import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CatalogWidget extends StatefulWidget {
  final String image;
  const CatalogWidget({Key? key, required this.image}) : super(key: key);

  @override
  State<CatalogWidget> createState() => _CatalogWidgetState();
}

class _CatalogWidgetState extends State<CatalogWidget> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      3,
      (index) => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 137,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          child: Image.asset(
            widget.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 137,
          child: Stack(
            children: [
              PageView.builder(
                controller: controller,
                // itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
              Column(
                children: [
                  const Spacer(),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: const ScrollingDotsEffect(
                        dotColor: Colors.white,
                        activeDotColor: Color(0xff5D4037),
                        activeStrokeWidth: 2.6,
                        activeDotScale: 1.3,
                        maxVisibleDots: 5,
                        radius: 8,
                        spacing: 10,
                        dotHeight: 12,
                        dotWidth: 12,
                      ),
                    ),
                  ),
                  _size(15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _size(double height) {
    return SizedBox(height: height);
  }
}
