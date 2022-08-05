import 'package:shopfee_clean_arch/layers/data/models/catalog_model.dart';

abstract class CatalogDataSource {
  Future<CatalogModel> getImageCatolog();
}
