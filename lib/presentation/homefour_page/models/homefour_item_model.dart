import '../../../core/app_export.dart';

/// This class is used in the [homefour_item_widget] screen.
class HomefourItemModel {
  HomefourItemModel({
    this.ridinginthehorse,
    this.ridingInTheHorse,
    this.id,
  }) {
    ridinginthehorse = ridinginthehorse ?? ImageConstant.imgRectangle11;
    ridingInTheHorse = ridingInTheHorse ?? "Riding in the horse";
    id = id ?? "";
  }

  String? ridinginthehorse;

  String? ridingInTheHorse;

  String? id;
}
