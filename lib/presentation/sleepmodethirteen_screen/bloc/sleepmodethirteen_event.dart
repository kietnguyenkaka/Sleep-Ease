// ignore_for_file: must_be_immutable

part of 'sleepmodethirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sleepmodethirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepmodethirteenEvent extends Equatable {}

/// Event that is dispatched when the Sleepmodethirteen widget is first created.
class SleepmodethirteenInitialEvent extends SleepmodethirteenEvent {
  @override
  List<Object?> get props => [];
}
