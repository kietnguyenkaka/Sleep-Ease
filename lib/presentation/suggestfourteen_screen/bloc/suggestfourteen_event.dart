// ignore_for_file: must_be_immutable

part of 'suggestfourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Suggestfourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuggestfourteenEvent extends Equatable {}

/// Event that is dispatched when the Suggestfourteen widget is first created.
class SuggestfourteenInitialEvent extends SuggestfourteenEvent {
  @override
  List<Object?> get props => [];
}
