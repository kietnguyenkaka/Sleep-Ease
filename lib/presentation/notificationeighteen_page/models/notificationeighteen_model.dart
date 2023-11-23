// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'notificationeighteen_item_model.dart';

/// This class defines the variables used in the [notificationeighteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationeighteenModel extends Equatable {
  NotificationeighteenModel({this.notificationeighteenItemList = const []}) {}

  List<NotificationeighteenItemModel> notificationeighteenItemList;

  NotificationeighteenModel copyWith(
      {List<NotificationeighteenItemModel>? notificationeighteenItemList}) {
    return NotificationeighteenModel(
      notificationeighteenItemList:
          notificationeighteenItemList ?? this.notificationeighteenItemList,
    );
  }

  @override
  List<Object?> get props => [notificationeighteenItemList];
}
