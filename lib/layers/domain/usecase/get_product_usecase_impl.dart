import 'package:shopfee_clean_arch/comom/use_case.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/product_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/repositories/product_repository.dart';

class GetProductUseCaseImpl implements UseCase<List<ProductEntity>, NoParam> {
  final ProductRepository _productRepository;

  GetProductUseCaseImpl(this._productRepository);
  @override
  Future<List<ProductEntity>> call(NoParam param) {
    return _productRepository.getProducts();
  }
}
