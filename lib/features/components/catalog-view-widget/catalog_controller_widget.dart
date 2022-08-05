import 'package:mobx/mobx.dart';
import 'package:shopfee_clean_arch/comom/app_state.dart';
import 'package:shopfee_clean_arch/comom/use_case.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/catalog_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/usecases/get_catalog_usecase_impl.dart';
part 'catalog_controller_widget.g.dart';

class CatalogControllerWidget = _CatalogControllerWidgetBase
    with _$CatalogControllerWidget;

abstract class _CatalogControllerWidgetBase with Store {
  final GetCatalogUseCaseImpl _getCatalogUseCaseImpl;

  _CatalogControllerWidgetBase(this._getCatalogUseCaseImpl);

  @observable
  AppState state = StartAppState();

  @action
  void load() {
    state = LoadingAppState();
    _getCatalogUseCaseImpl.call(NoParam()).then((value) {
      state = DataAppState<List<CatalogEntity>>(value);
    });
  }
}
