import 'package:coffee_shope/layers/data/models/catalog_model.dart';

abstract class CatalogDataSource {
  Future<CatalogModel> getImageCatolog();
}
