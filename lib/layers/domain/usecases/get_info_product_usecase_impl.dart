import 'package:shopfee_clean_arch/comom/use_case.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/info_product_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/repositories/info_product_repository.dart';

class GetInfoProductUseCaseImpl
    implements UseCase<List<InfoProductEntity>, NoParam> {
  final InfoProductRepository _infoProductRepository;

  GetInfoProductUseCaseImpl(this._infoProductRepository);
  @override
  Future<List<InfoProductEntity>> call(NoParam param) {
    return _infoProductRepository.getInfoProduct();
  }
}
