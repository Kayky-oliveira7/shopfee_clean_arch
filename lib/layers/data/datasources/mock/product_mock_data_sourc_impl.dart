import 'package:coffee_shope/layers/data/datasources/product_data_source.dart';
import 'package:coffee_shope/layers/data/models/product_model.dart';

class ProductMockDataSourceImpl implements ProductDataSource {
  @override
  Future<List<ProductModel>> getProducts() {
    return Future.delayed(
      const Duration(seconds: 5),
    ).then((value) {
      List<ProductModel> listProducts = [];

      listProducts.add(
        ProductModel(
          "Coffee Milk",
          "Ice americano + fresh milk ",
          25.000,
          "assets/images/coffe-milk-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Caramel Latte",
          "Espresso, Fresh Milk and Caramel ",
          25.000,
          "assets/images/cocoa-caramel-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Caramel Latte",
          "Espresso, Fresh Milk and Caramel ",
          25.000,
          "assets/images/cocoa-caramel-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Caramel Latte",
          "Espresso, Fresh Milk and Caramel ",
          25.000,
          "assets/images/cocoa-caramel-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Flat White",
          "Smooth ristretto shots of espresso with milk",
          25.000,
          "assets/images/nitro-cold-brew-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Flat White",
          "Smooth ristretto shots of espresso with milk",
          25.000,
          "assets/images/nitro-cold-brew-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Flat White",
          "Smooth ristretto shots of espresso with milk",
          25.000,
          "assets/images/nitro-cold-brew-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Machiato",
          "Espresso and cream machiato ",
          18.000,
          "assets/images/caffe-macha-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Coffee Milk",
          "Ice americano + fresh milk ",
          25.000,
          "assets/images/coffe-milk-image.png",
        ),
      );
      listProducts.add(
        ProductModel(
          "Coffee Milk",
          "Ice americano + fresh milk ",
          25.000,
          "assets/images/coffe-milk-image.png",
        ),
      );
      return listProducts;
    });
  }
}
