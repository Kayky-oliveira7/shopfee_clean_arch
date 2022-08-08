import 'package:coffee_shope/layers/domain/entitys/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
}
