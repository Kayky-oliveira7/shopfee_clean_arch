import 'package:shopfee_clean_arch/layers/data/datasources/info_product_data_source.dart';
import 'package:shopfee_clean_arch/layers/domain/entitys/info_product_entity.dart';
import 'package:shopfee_clean_arch/layers/domain/mappers/info_product_model_to_entity_mappper.dart';
import 'package:shopfee_clean_arch/layers/domain/repositories/info_product_repository.dart';

class InfoProductRepositoryImpl implements InfoProductRepository {
  final InfoProductDataSource _infoProductDataSource;

  InfoProductRepositoryImpl(this._infoProductDataSource);
  @override
  Future<List<InfoProductEntity>> getInfoProduct() {
    return _infoProductDataSource.getInfoProduct().then((value) {
      return value
          .map((e) => InfoProductModelToEntityMapper(e).toEntity())
          .toList();
    });
  }
}
