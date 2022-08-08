import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadShimmerWidget extends StatelessWidget {
  const LoadShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Shimmer.fromColors(
              baseColor: Colors.grey.shade400,
              highlightColor: Colors.grey.shade300,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                width: 66,
                height: 69,
              )),
          title: Shimmer.fromColors(
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.grey.shade300,
            child: Container(
              width: double.infinity,
              height: 16,
              color: Colors.white,
            ),
          ),
          subtitle: Shimmer.fromColors(
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.grey.shade300,
            child: Container(
              width: double.infinity,
              height: 16,
              color: Colors.white,
            ),
          ),
          trailing: Shimmer.fromColors(
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.grey.shade300,
            child: Container(
              width: 45,
              height: 16,
              color: Colors.white,
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}
