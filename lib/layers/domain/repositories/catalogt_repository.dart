import 'package:coffee_shope/layers/domain/entitys/catalog_entity.dart';

abstract class CatalogRepository {
  Future<CatalogEntity> getImageCatalog();
}
