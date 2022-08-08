import 'package:coffee_shope/comom/app_state.dart';
import 'package:coffee_shope/features/components/catalog-view-widget/catalog_controller_widget.dart';
import 'package:coffee_shope/layers/data/datasources/catalog_data_source.dart';
import 'package:coffee_shope/layers/data/datasources/mock/catalog_mock_data_source_impl.dart';
import 'package:coffee_shope/layers/data/repoistories/catalog_repository_impl.dart';
import 'package:coffee_shope/layers/domain/entitys/catalog_entity.dart';
import 'package:coffee_shope/layers/domain/repositories/catalogt_repository.dart';
import 'package:coffee_shope/layers/domain/usecases/get_catalog_usecase_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CatalogWidget extends StatefulWidget {
  const CatalogWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CatalogWidget> createState() => _CatalogWidgetState();
}

class _CatalogWidgetState extends State<CatalogWidget> {
  final controller = PageController();

  late CatalogRepository _catalogRepository;
  CatalogDataSource catalogDataSource = CatlogMockDataSourceImpl();
  late GetCatalogUseCaseImpl _getCatalogUseCaseImpl;
  late CatalogControllerWidget _catalogControllerWidget;

  @override
  void initState() {
    _catalogRepository = CatalogRepositoryImpl(catalogDataSource);
    _getCatalogUseCaseImpl = GetCatalogUseCaseImpl(_catalogRepository);
    _catalogControllerWidget = CatalogControllerWidget(_getCatalogUseCaseImpl);
    super.initState();
    _catalogControllerWidget.load();
  }

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      3,
      (index) => Observer(
        builder: (_) {
          return _renderBody(_catalogControllerWidget.state);
        },
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

  Widget _renderBody(AppState state) {
    if (state is LoadingAppState) {
      return _load();
    } else {
      return _catalogView(_catalogControllerWidget.state);
    }
  }

  Widget _load() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _catalogView(AppState state) {
    if (state is DataAppState<CatalogEntity>) {
      return Container(
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
            state.data.image,
            fit: BoxFit.cover,
          ),
        ),
      );
    }
    return Container();
  }

  Widget _size(double height) {
    return SizedBox(height: height);
  }
}
