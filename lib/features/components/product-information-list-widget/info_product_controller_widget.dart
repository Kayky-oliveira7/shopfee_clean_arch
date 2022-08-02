import 'package:mobx/mobx.dart';
import 'package:shopfee_clean_arch/comom/app_state.dart';
import 'package:shopfee_clean_arch/comom/use_case.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/info_product_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/usecases/get_info_product_usecase_impl.dart';
part 'info_product_controller_widget.g.dart';

class InfoProductControllerWidget = _InfoProductControllerWidgetBase
    with _$InfoProductControllerWidget;

abstract class _InfoProductControllerWidgetBase with Store {
  final GetInfoProductUseCaseImpl _getInfoProductUseCaseImpl;

  _InfoProductControllerWidgetBase(this._getInfoProductUseCaseImpl);

  @observable
  AppState state = StartAppState();

  @action
  void load() {
    state = LoadingAppState();

    _getInfoProductUseCaseImpl.call(NoParam()).then((value) {
      state = DataAppState<List<InfoProductEntity>>(value);
    });
  }
}
