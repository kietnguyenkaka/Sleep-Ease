// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'achievementsgrid_item_model.dart';

/// This class defines the variables used in the [archivementsseventeen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArchivementsseventeenModel extends Equatable {
  ArchivementsseventeenModel({this.achievementsgridItemList = const []}) {}

  List<AchievementsgridItemModel> achievementsgridItemList;

  ArchivementsseventeenModel copyWith(
      {List<AchievementsgridItemModel>? achievementsgridItemList}) {
    return ArchivementsseventeenModel(
      achievementsgridItemList:
          achievementsgridItemList ?? this.achievementsgridItemList,
    );
  }

  @override
  List<Object?> get props => [achievementsgridItemList];
}
