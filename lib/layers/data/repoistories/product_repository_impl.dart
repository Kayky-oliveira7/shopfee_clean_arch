import 'package:coffee_shope/layers/data/datasources/product_data_source.dart';
import 'package:coffee_shope/layers/domain/entitys/product_entity.dart';
import 'package:coffee_shope/layers/domain/mappers/product_model_to_entity_mapper.dart';
import 'package:coffee_shope/layers/domain/repositories/product_repository.dart';

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
