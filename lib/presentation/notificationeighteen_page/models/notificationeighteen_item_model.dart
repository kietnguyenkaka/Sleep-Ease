/// This class is used in the [notificationeighteen_item_widget] screen.
class NotificationeighteenItemModel {
  NotificationeighteenItemModel({
    this.dreamEase,
    this.duration,
    this.title,
    this.moreNotifcations,
    this.id,
  }) {
    dreamEase = dreamEase ?? "DreamEase";
    duration = duration ?? "5 hours ago";
    title = title ?? "Bạn vừa đặt được thành tựu Educated Sleeper!";
    moreNotifcations = moreNotifcations ?? "2 more notifcations";
    id = id ?? "";
  }

  String? dreamEase;

  String? duration;

  String? title;

  String? moreNotifcations;

  String? id;
}
