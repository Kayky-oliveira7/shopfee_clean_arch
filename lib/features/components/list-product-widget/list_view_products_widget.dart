import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopfee_clean_arch/comom/app_state.dart';
import 'package:shopfee_clean_arch/features/components/list-product-widget/products_controller.dart';
import 'package:shopfee_clean_arch/layers/data/datasources/mock/product_mock_data_sourc_impl.dart';
import 'package:shopfee_clean_arch/layers/data/datasources/product_data_source.dart';
import 'package:shopfee_clean_arch/layers/data/repoistories/product_repository_impl.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/product_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/repositories/product_repository.dart';
import 'package:shopfee_clean_arch/layers/domain/usecases/get_product_usecase_impl.dart';

class ListViewProductsWidget extends StatefulWidget {
  const ListViewProductsWidget({Key? key}) : super(key: key);

  @override
  State<ListViewProductsWidget> createState() => _ListViewProductsWidgetState();
}

class _ListViewProductsWidgetState extends State<ListViewProductsWidget> {
  late ProductRepository _productRepository;
  ProductDataSource _productDataSource = ProductMockDataSourceImpl();
  late GetProductUseCaseImpl _getProductUseCaseImpl;
  late ProductControllerWiget _productControllerWiget;

  @override
  void initState() {
    _productRepository = ProductRepositoryImpl(_productDataSource);
    _productDataSource = ProductMockDataSourceImpl();
    _getProductUseCaseImpl = GetProductUseCaseImpl(_productRepository);
    _productControllerWiget = ProductControllerWiget(_getProductUseCaseImpl);
    super.initState();
    _productControllerWiget.load();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return _renderBory(_productControllerWiget.state);
      },
    );
  }

  Widget _renderBory(AppState state) {
    if (state is LoadingAppState) {
      return _loading();
    } else {
      return _listProducts(_productControllerWiget.state);
    }
  }

  Widget _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _listProducts(AppState state) {
    if (state is DataAppState<List<ProductEntity>>) {
      for (var i = 0; i < state.data.length; i++) {
        return ListView.builder(
          itemBuilder: (context, index) {
            var products = state.data[index];

            return ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xffEFEBE9),
                child: Image.asset(
                  products.imageProduct,
                  fit: BoxFit.cover,
                  height: 69,
                ),
              ),
              title: Text(
                products.nameProduct,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color(0xff555555),
                ),
              ),
              subtitle: Text(
                products.productRecipe,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color(0xff555555),
                ),
              ),
              trailing: Text(
                "Rp:${products.price.toString()}",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color(0xff3C3C3C),
                ),
              ),
            );
          },
          itemCount: state.data.length,
        );
      }
    }
    return Container();
  }
}
