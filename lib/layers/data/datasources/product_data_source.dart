import 'package:shopfee_clean_arch/layers/data/models/product_model.dart';

abstract class ProductDataSource {
  Future<List<ProductModel>> getProducts();
}
