// ignore_for_file: must_be_immutable

part of 'notificationeighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Notificationeighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationeighteenEvent extends Equatable {}

/// Event that is dispatched when the Notificationeighteen widget is first created.
class NotificationeighteenInitialEvent extends NotificationeighteenEvent {
  @override
  List<Object?> get props => [];
}
