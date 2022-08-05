import 'package:shopfee_clean_arch/layers/data/datasources/catalog_data_source.dart';
import 'package:shopfee_clean_arch/layers/data/models/catalog_model.dart';

class CatlogMockDataSourceImpl implements CatalogDataSource {
  @override
  Future<List<CatalogModel>> getImageCatolog() {
    return Future.delayed(Duration(seconds: 4)).then(
      (value) {
        List<CatalogModel> catalogs = [];

        catalogs.add(
          CatalogModel(
            "assets/images/coffee_image.png",
          ),
        );
        catalogs.add(
          CatalogModel(
            "assets/images/catalog-bebida-image.png",
          ),
        );
        catalogs.add(
          CatalogModel(
            "assets/images/catalog-patel-image.png",
          ),
        );
        return catalogs;
      },
    );
  }
}
