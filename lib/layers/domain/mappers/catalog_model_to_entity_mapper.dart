import 'package:coffee_shope/layers/data/models/catalog_model.dart';
import 'package:coffee_shope/layers/domain/entitys/catalog_entity.dart';

class CatalogModelToEntityMapper {
  final CatalogModel _catalogModel;

  CatalogModelToEntityMapper(this._catalogModel);

  CatalogEntity toEntity() {
    return CatalogEntity(_catalogModel.image);
  }
}
