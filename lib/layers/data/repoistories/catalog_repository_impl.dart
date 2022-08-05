import 'package:shopfee_clean_arch/layers/data/datasources/catalog_data_source.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/catalog_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/mappers/catalog_model_to_entity_mapper.dart';
import 'package:shopfee_clean_arch/layers/domain/repositories/catalogt_repository.dart';

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
