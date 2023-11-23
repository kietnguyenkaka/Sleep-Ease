// ignore_for_file: must_be_immutable

part of 'homefive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Homefive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomefiveEvent extends Equatable {}

/// Event that is dispatched when the Homefive widget is first created.
class HomefiveInitialEvent extends HomefiveEvent {
  @override
  List<Object?> get props => [];
}
