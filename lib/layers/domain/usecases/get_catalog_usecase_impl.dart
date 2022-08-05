import 'package:shopfee_clean_arch/comom/use_case.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/catalog_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/repositories/catalogt_repository.dart';

class GetCatalogUseCaseImpl implements UseCase<List<CatalogEntity>, NoParam> {
  final CatalogRepository _catalogRepository;

  GetCatalogUseCaseImpl(this._catalogRepository);
  @override
  Future<List<CatalogEntity>> call(NoParam param) {
    return _catalogRepository.getImageCatalog();
  }
}
