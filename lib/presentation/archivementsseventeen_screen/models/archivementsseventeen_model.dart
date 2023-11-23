// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'archivementsseventeen_item_model.dart';

/// This class defines the variables used in the [archivementsseventeen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArchivementsseventeenModel extends Equatable {
  ArchivementsseventeenModel({this.archivementsseventeenItemList = const []}) {}

  List<ArchivementsseventeenItemModel> archivementsseventeenItemList;

  ArchivementsseventeenModel copyWith(
      {List<ArchivementsseventeenItemModel>? archivementsseventeenItemList}) {
    return ArchivementsseventeenModel(
      archivementsseventeenItemList:
          archivementsseventeenItemList ?? this.archivementsseventeenItemList,
    );
  }

  @override
  List<Object?> get props => [archivementsseventeenItemList];
}
