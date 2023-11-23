import '../../../core/app_export.dart';

/// This class is used in the [achievementsgrid_item_widget] screen.
class AchievementsgridItemModel {
  AchievementsgridItemModel({
    this.earlyRiser,
    this.goodNightSSleep,
    this.achievedAfterYou,
    this.id,
  }) {
    earlyRiser = earlyRiser ?? ImageConstant.img;
    goodNightSSleep = goodNightSSleep ?? "Early Riser";
    achievedAfterYou = achievedAfterYou ??
        "Đạt được khi bạn thức dậy vào lúc 8-9 giờ sáng trong vòng 14 ngày liên tiếp";
    id = id ?? "";
  }

  String? earlyRiser;

  String? goodNightSSleep;

  String? achievedAfterYou;

  String? id;
}
