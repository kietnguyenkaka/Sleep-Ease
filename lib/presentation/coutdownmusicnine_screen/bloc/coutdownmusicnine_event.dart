// ignore_for_file: must_be_immutable

part of 'coutdownmusicnine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Coutdownmusicnine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CoutdownmusicnineEvent extends Equatable {}

/// Event that is dispatched when the Coutdownmusicnine widget is first created.
class CoutdownmusicnineInitialEvent extends CoutdownmusicnineEvent {
  @override
  List<Object?> get props => [];
}
