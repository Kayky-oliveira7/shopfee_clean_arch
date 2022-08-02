import 'package:shopfee_clean_arch/layers/data/models/info_product_model.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/info_product_entity.dart';

class InfoProductModelToEntityMapper {
  final InfoProductModel _infoProductModel;

  InfoProductModelToEntityMapper(this._infoProductModel);

  InfoProductEntity toEntity() {
    return InfoProductEntity(
        _infoProductModel.infoProduct, _infoProductModel.logo);
  }
}
