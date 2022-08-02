import 'package:shopfee_clean_arch/layers/domain/entitys/info_product_entity.dart';

abstract class InfoProductRepository {
  Future<List<InfoProductEntity>> getInfoProduct();
}
