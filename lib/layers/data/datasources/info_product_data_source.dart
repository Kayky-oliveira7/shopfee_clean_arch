import 'package:shopfee_clean_arch/layers/data/models/info_product_model.dart';

abstract class InfoProductDataSource {
  Future<List<InfoProductModel>> getInfoProduct();
}
