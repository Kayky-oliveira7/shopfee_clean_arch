import 'package:coffee_shope/comom/use_case.dart';
import 'package:coffee_shope/layers/domain/entitys/catalog_entity.dart';
import 'package:coffee_shope/layers/domain/repositories/catalogt_repository.dart';

class GetCatalogUseCaseImpl implements UseCase<CatalogEntity, NoParam> {
  final CatalogRepository _catalogRepository;

  GetCatalogUseCaseImpl(this._catalogRepository);
  @override
  Future<CatalogEntity> call(NoParam param) {
    return _catalogRepository.getImageCatalog();
  }
}
