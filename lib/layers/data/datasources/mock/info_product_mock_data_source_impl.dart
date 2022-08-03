import 'package:shopfee_clean_arch/layers/data/datasources/info_product_data_source.dart';
import 'package:shopfee_clean_arch/layers/data/models/info_product_model.dart';

class InfoProductMockDataSourceImpl implements InfoProductDataSource {
  @override
  Future<List<InfoProductModel>> getInfoProduct() {
    return Future.delayed(const Duration(seconds: 0)).then((value) {
      List<InfoProductModel> infoproducts = [];

      infoproducts
          .add(InfoProductModel("Filter", "assets/icons/filter-icon.png"));
      infoproducts
          .add(InfoProductModel("Rating 4.5+", "assets/icons/rating-icon.png"));
      infoproducts
          .add(InfoProductModel("Price", "assets/icons/price-icon.png"));
      infoproducts.add(
          InfoProductModel("Promotion", "assets/icons/promotion-icon.png"));
      return infoproducts;
    });
  }
}
