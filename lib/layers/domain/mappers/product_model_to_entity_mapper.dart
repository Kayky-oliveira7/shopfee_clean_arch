import 'package:flutter/physics.dart';
import 'package:shopfee_clean_arch/layers/data/models/product_model.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/product_entity.dart';

class ProductModelToEntityMapper {
  final ProductModel _productModel;

  ProductModelToEntityMapper(this._productModel);

  ProductEntity toEntity() {
    return ProductEntity(_productModel.nameProduct, _productModel.productRecipe,
        _productModel.price);
  }
}
