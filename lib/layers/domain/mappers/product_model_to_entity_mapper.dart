import 'package:coffee_shope/layers/data/models/product_model.dart';
import 'package:coffee_shope/layers/domain/entitys/product_entity.dart';

class ProductModelToEntityMapper {
  final ProductModel _productModel;

  ProductModelToEntityMapper(this._productModel);

  ProductEntity toEntity() {
    return ProductEntity(_productModel.nameProduct, _productModel.productRecipe,
        _productModel.price, _productModel.imageProduct);
  }
}
