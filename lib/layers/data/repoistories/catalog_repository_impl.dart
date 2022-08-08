import 'package:coffee_shope/layers/data/datasources/catalog_data_source.dart';
import 'package:coffee_shope/layers/domain/entitys/catalog_entity.dart';
import 'package:coffee_shope/layers/domain/mappers/catalog_model_to_entity_mapper.dart';
import 'package:coffee_shope/layers/domain/repositories/catalogt_repository.dart';

class CatalogRepositoryImpl implements CatalogRepository {
  final CatalogDataSource _catalogDataSource;

  CatalogRepositoryImpl(this._catalogDataSource);
  @override
  Future<CatalogEntity> getImageCatalog() {
    return _catalogDataSource.getImageCatolog().then((value) {
      return CatalogModelToEntityMapper(value).toEntity();
    });
  }
}
