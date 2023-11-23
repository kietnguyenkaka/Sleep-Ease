// ignore_for_file: must_be_immutable

part of 'tipseleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tipseleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TipselevenEvent extends Equatable {}

/// Event that is dispatched when the Tipseleven widget is first created.
class TipselevenInitialEvent extends TipselevenEvent {
  @override
  List<Object?> get props => [];
}
