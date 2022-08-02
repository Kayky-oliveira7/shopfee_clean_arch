import 'package:shopfee_clean_arch/layers/domain/entitys/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
}
