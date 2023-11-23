// ignore_for_file: must_be_immutable

part of 'notificationeighteen_bloc.dart';

/// Represents the state of Notificationeighteen in the application.
class NotificationeighteenState extends Equatable {
  NotificationeighteenState({this.notificationeighteenModelObj});

  NotificationeighteenModel? notificationeighteenModelObj;

  @override
  List<Object?> get props => [
        notificationeighteenModelObj,
      ];
  NotificationeighteenState copyWith(
      {NotificationeighteenModel? notificationeighteenModelObj}) {
    return NotificationeighteenState(
      notificationeighteenModelObj:
          notificationeighteenModelObj ?? this.notificationeighteenModelObj,
    );
  }
}
