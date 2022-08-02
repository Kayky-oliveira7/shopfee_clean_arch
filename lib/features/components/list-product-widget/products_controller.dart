import 'package:mobx/mobx.dart';
import 'package:shopfee_clean_arch/comom/app_state.dart';
import 'package:shopfee_clean_arch/comom/use_case.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/product_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/usecases/get_product_usecase_impl.dart';
part 'products_controller.g.dart';

class ProductControllerWiget = _ProductControllerWigetBase
    with _$ProductControllerWiget;

abstract class _ProductControllerWigetBase with Store {
  final GetProductUseCaseImpl _getProductUseCaseImpl;

  _ProductControllerWigetBase(this._getProductUseCaseImpl);

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
