// ignore_for_file: must_be_immutable

part of 'sleepreportfifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sleepreportfifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepreportfifteenEvent extends Equatable {}

/// Event that is dispatched when the Sleepreportfifteen widget is first created.
class SleepreportfifteenInitialEvent extends SleepreportfifteenEvent {
  @override
  List<Object?> get props => [];
}
