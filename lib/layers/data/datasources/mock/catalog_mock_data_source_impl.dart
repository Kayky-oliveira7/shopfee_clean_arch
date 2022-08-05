import 'package:shopfee_clean_arch/layers/data/datasources/catalog_data_source.dart';
import 'package:shopfee_clean_arch/layers/data/models/catalog_model.dart';

class CatlogMockDataSourceImpl implements CatalogDataSource {
  @override
  Future<CatalogModel> getImageCatolog() {
    return Future.delayed(Duration(seconds: 4)).then(
      (value) => CatalogModel(""),
    );
  }
}
