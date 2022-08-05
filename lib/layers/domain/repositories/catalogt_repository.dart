import 'package:shopfee_clean_arch/layers/domain/entitys/catalog_entity.dart';

abstract class CatalogRepository {
  Future<CatalogEntity> getImageCatalog();
}
