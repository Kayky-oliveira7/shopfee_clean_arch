import 'package:coffee_shope/comom/app_state.dart';
import 'package:coffee_shope/comom/use_case.dart';
import 'package:coffee_shope/layers/domain/entitys/catalog_entity.dart';
import 'package:coffee_shope/layers/domain/usecases/get_catalog_usecase_impl.dart';
import 'package:mobx/mobx.dart';

part 'catalog_controller_widget.g.dart';

class CatalogControllerWidget = CatalogControllerWidgetBase
    with _$CatalogControllerWidget;

abstract class CatalogControllerWidgetBase with Store {
  final GetCatalogUseCaseImpl _getCatalogUseCaseImpl;

  CatalogControllerWidgetBase(this._getCatalogUseCaseImpl);

  @observable
  AppState state = StartAppState();

  @action
  void load() {
    state = LoadingAppState();
    _getCatalogUseCaseImpl.call(NoParam()).then((value) {
      state = DataAppState<CatalogEntity>(value);
    });
  }
}
