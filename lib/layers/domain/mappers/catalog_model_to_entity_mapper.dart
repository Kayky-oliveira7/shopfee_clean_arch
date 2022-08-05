import 'package:shopfee_clean_arch/layers/data/models/catalog_model.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/catalog_entity.dart';

class CatalogModelToEntityMapper {
  final CatalogModel _catalogModel;

  CatalogModelToEntityMapper(this._catalogModel);

  CatalogEntity toEntity() {
    return CatalogEntity(_catalogModel.image);
  }
}
