import 'package:coffee_shope/layers/data/datasources/catalog_data_source.dart';
import 'package:coffee_shope/layers/data/models/catalog_model.dart';

class CatlogMockDataSourceImpl implements CatalogDataSource {
  @override
  Future<CatalogModel> getImageCatolog() {
    return Future.delayed(const Duration(seconds: 4)).then(
      (value) {
        return CatalogModel(
          "assets/images/coffee_image.png",
        );
      },
    );
  }
}

//
