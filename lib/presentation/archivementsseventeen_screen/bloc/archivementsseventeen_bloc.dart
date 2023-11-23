import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/achievementsgrid_item_model.dart';
import 'package:dreamease/presentation/archivementsseventeen_screen/models/archivementsseventeen_model.dart';
part 'archivementsseventeen_event.dart';
part 'archivementsseventeen_state.dart';

/// A bloc that manages the state of a Archivementsseventeen according to the event that is dispatched to it.
class ArchivementsseventeenBloc
    extends Bloc<ArchivementsseventeenEvent, ArchivementsseventeenState> {
  ArchivementsseventeenBloc(ArchivementsseventeenState initialState)
      : super(initialState) {
    on<ArchivementsseventeenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArchivementsseventeenInitialEvent event,
    Emitter<ArchivementsseventeenState> emit,
  ) async {
    emit(state.copyWith(
        archivementsseventeenModelObj: state.archivementsseventeenModelObj
            ?.copyWith(
                achievementsgridItemList: fillAchievementsgridItemList())));
  }

  List<AchievementsgridItemModel> fillAchievementsgridItemList() {
    return [
      AchievementsgridItemModel(
          earlyRiser: ImageConstant.img,
          goodNightSSleep: "Early Riser",
          achievedAfterYou:
              "Đạt được khi bạn thức dậy vào lúc 8-9 giờ sáng trong vòng 14 ngày liên tiếp"),
      AchievementsgridItemModel(
          earlyRiser: ImageConstant.img78x64,
          goodNightSSleep: "Good Night's Sleep",
          achievedAfterYou: "Đạt được sau khi bạn ngủ đủ giấc 7 đêm liên tiếp"),
      AchievementsgridItemModel(
          earlyRiser: ImageConstant.img1,
          goodNightSSleep: "Night Owl",
          achievedAfterYou:
              "Đạt được khi bạn đi ngủ vào khoảng 9-10 giờ tối trong suốt một tháng liên tiếp"),
      AchievementsgridItemModel(
          earlyRiser: ImageConstant.img2,
          goodNightSSleep: "Consistent Sleeper",
          achievedAfterYou:
              "Đạt được khi bạn duy trì một lịch trình ngủ đều đặn trong vòng 14 ngày liên tiếp."),
      AchievementsgridItemModel(
          earlyRiser: ImageConstant.img3,
          goodNightSSleep: "Educated Sleeper",
          achievedAfterYou:
              "Đạt được khi bạn đọc toàn bộ những tips được cung cấp bởi ứng dụng."),
      AchievementsgridItemModel(
          earlyRiser: ImageConstant.img4,
          goodNightSSleep: "Night Watcher",
          achievedAfterYou:
              "Đạt được khi bạn theo dõi giấc ngủ của mình trong 30 đêm liên tiếp.")
    ];
  }
}
