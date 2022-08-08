import 'package:coffee_shope/layers/domain/entitys/info_product_entity.dart';

abstract class InfoProductRepository {
  Future<List<InfoProductEntity>> getInfoProduct();
}
