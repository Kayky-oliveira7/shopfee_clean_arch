import 'package:shopfee_clean_arch/layers/data/datasources/product_data_source.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/product_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/mappers/product_model_to_entity_mapper.dart';
import 'package:shopfee_clean_arch/layers/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDataSource _productDataSource;

  ProductRepositoryImpl(this._productDataSource);
  @override
  Future<List<ProductEntity>> getProducts() {
    return _productDataSource.getProducts().then((value) {
      return value
          .map((e) => ProductModelToEntityMapper(e).toEntity())
          .toList();
    });
  }
}
