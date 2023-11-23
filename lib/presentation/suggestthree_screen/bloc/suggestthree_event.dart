// ignore_for_file: must_be_immutable

part of 'suggestthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Suggestthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuggestthreeEvent extends Equatable {}

/// Event that is dispatched when the Suggestthree widget is first created.
class SuggestthreeInitialEvent extends SuggestthreeEvent {
  @override
  List<Object?> get props => [];
}
