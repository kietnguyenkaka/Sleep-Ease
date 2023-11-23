// ignore_for_file: must_be_immutable

part of 'homefour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Homefour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomefourEvent extends Equatable {}

/// Event that is dispatched when the Homefour widget is first created.
class HomefourInitialEvent extends HomefourEvent {
  @override
  List<Object?> get props => [];
}
