import 'package:coffee_shope/comom/app_state.dart';
import 'package:coffee_shope/comom/use_case.dart';
import 'package:coffee_shope/layers/domain/entitys/product_entity.dart';
import 'package:coffee_shope/layers/domain/usecases/get_product_usecase_impl.dart';
import 'package:mobx/mobx.dart';

part 'products_controller.g.dart';

class ProductControllerWiget = ProductControllerWigetBase
    with _$ProductControllerWiget;

abstract class ProductControllerWigetBase with Store {
  final GetProductUseCaseImpl _getProductUseCaseImpl;

  ProductControllerWigetBase(this._getProductUseCaseImpl);

  @observable
  AppState state = StartAppState();

  @action
  void load() {
    state = LoadingAppState();

    _getProductUseCaseImpl.call(NoParam()).then((value) {
      state = DataAppState<List<ProductEntity>>(value);
    });
  }
}
