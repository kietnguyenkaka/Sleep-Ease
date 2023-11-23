/// This class is used in the [discoverten_item_widget] screen.
class DiscovertenItemModel {
  DiscovertenItemModel({
    this.h,
    this.wd,
    this.id,
  }) {
    h = h ?? "5h";
    wd = wd ?? "Wd";
    id = id ?? "";
  }

  String? h;

  String? wd;

  String? id;
}
