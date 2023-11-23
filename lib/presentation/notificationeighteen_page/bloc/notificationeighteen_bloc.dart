import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notificationeighteen_item_model.dart';
import 'package:dreamease/presentation/notificationeighteen_page/models/notificationeighteen_model.dart';
part 'notificationeighteen_event.dart';
part 'notificationeighteen_state.dart';

/// A bloc that manages the state of a Notificationeighteen according to the event that is dispatched to it.
class NotificationeighteenBloc
    extends Bloc<NotificationeighteenEvent, NotificationeighteenState> {
  NotificationeighteenBloc(NotificationeighteenState initialState)
      : super(initialState) {
    on<NotificationeighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationeighteenInitialEvent event,
    Emitter<NotificationeighteenState> emit,
  ) async {
    emit(state.copyWith(
        notificationeighteenModelObj: state.notificationeighteenModelObj
            ?.copyWith(
                notificationeighteenItemList:
                    fillNotificationeighteenItemList())));
  }

  List<NotificationeighteenItemModel> fillNotificationeighteenItemList() {
    return [
      NotificationeighteenItemModel(
          dreamEase: "DreamEase",
          duration: "5 hours ago",
          title: "Bạn vừa đặt được thành tựu Educated Sleeper!",
          moreNotifcations: "2 more notifcations"),
      NotificationeighteenItemModel(
          dreamEase: "DreamEase",
          duration: "5 hours ago",
          title: "Bạn vừa đặt được thành tựu Educated Sleeper!",
          moreNotifcations: "2 more notifcations"),
      NotificationeighteenItemModel(
          dreamEase: "DreamEase",
          duration: "5 hours ago",
          title: "Bạn vừa đặt được thành tựu Educated Sleeper!",
          moreNotifcations: "2 more notifcations")
    ];
  }
}
