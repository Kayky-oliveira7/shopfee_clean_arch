import 'package:shopfee_clean_arch/layers/data/datasources/product_data_source.dart';
import 'package:shopfee_clean_arch/layers/data/models/product_model.dart';

class ProductMockDataSourceImpl implements ProductDataSource {
  @override
  Future<List<ProductModel>> getProducts() {
    return Future.delayed(
      const Duration(seconds: 3),
    ).then((value) {
      List<ProductModel> listProducts = [];

      listProducts.add(
        ProductModel("Coffee Milk", "Ice americano + fresh milk ", 25.000),
      );
      listProducts.add(
        ProductModel(
            "Caramel Latte", "Espresso, Fresh Milk and Caramel ", 25.000),
      );
      listProducts.add(
        ProductModel("Flat White",
            "Smooth ristretto shots of espresso with milk", 25.000),
      );
      listProducts.add(
        ProductModel("Machiato", "Espresso and cream machiato ", 18.000),
      );
      listProducts.add(
        ProductModel("Coffee Milk", "Ice americano + fresh milk ", 25.000),
      );
      listProducts.add(
        ProductModel("Coffee Milk", "Ice americano + fresh milk ", 25.000),
      );
      return listProducts;
    });
  }
}
