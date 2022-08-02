import 'package:flutter/material.dart';
import 'package:shopfee_clean_arch/features/components/catalog_selection_widget.dart';
import 'package:shopfee_clean_arch/features/components/catalog_widget.dart';
import 'package:shopfee_clean_arch/features/components/product_information_list_widget.dart';
import 'package:shopfee_clean_arch/features/components/search_bar_widget.dart';

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
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 304,
              backgroundColor: Colors.blue,
              flexibleSpace: Column(
                children: [
                  const SearcBarWidget(),
                  _size(16, null),
                  const CatalogWidget(),
                  _size(16, null),
                  const CatalogSelectionWidget(),
                  _size(8, null),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text("ola"),
                    subtitle: Text("xaaas"),
                    trailing: Text("jxasihhigxa"),
                  );
                },
                childCount: 20,
              ),
            ),
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
