import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopfee_clean_arch/comom/app_state.dart';
import 'package:shopfee_clean_arch/features/components/product-information-list-widget/info_product_controller_widget.dart';
import 'package:shopfee_clean_arch/layers/data/datasources/info_product_data_source.dart';
import 'package:shopfee_clean_arch/layers/data/datasources/mock/info_product_mock_data_source.dart';
import 'package:shopfee_clean_arch/layers/data/repoistories/info_product_repository_impl.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/info_product_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/repositories/info_product_repository.dart';
import 'package:shopfee_clean_arch/layers/domain/usecases/get_info_product_usecase_impl.dart';

class ProductInformationListWidget extends StatefulWidget {
  const ProductInformationListWidget({Key? key}) : super(key: key);

  @override
  State<ProductInformationListWidget> createState() =>
      _ProductInformationListWidgetState();
}

class _ProductInformationListWidgetState
    extends State<ProductInformationListWidget> {
  late InfoProductRepository _infoProductRepository;
  InfoProductDataSource infoProductDataSource = InfoProductMockDataSourceImpl();
  late GetInfoProductUseCaseImpl _infoProductUseCaseImpl;
  late InfoProductControllerWidget _infoProductControllerWidget;

  @override
  void initState() {
    _infoProductRepository = InfoProductRepositoryImpl(infoProductDataSource);
    _infoProductUseCaseImpl = GetInfoProductUseCaseImpl(_infoProductRepository);
    _infoProductControllerWidget =
        InfoProductControllerWidget(_infoProductUseCaseImpl);
    super.initState();
    _infoProductControllerWidget.load();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Observer(
            builder: (_) {
              return _infoProductList(_infoProductControllerWidget.state);
            },
          )),
    );
  }

  Widget _infoProductList(AppState state) {
    if (state is DataAppState<List<InfoProductEntity>>) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var infoProducts = state.data[index];
          return Row(
            children: [
              _size(8, null),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffEFEBE9),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 9, right: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        infoProducts.logo,
                      ),
                      _size(5.35, null),
                      Text(
                        infoProducts.infoProduct,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff3C3C3C),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: state.data.length,
      );
    }
    return Container();
  }

  Widget _size(double? width, double? height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
