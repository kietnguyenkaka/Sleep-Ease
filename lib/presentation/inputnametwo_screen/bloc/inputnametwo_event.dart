// ignore_for_file: must_be_immutable

part of 'inputnametwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Inputnametwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InputnametwoEvent extends Equatable {}

/// Event that is dispatched when the Inputnametwo widget is first created.
class InputnametwoInitialEvent extends InputnametwoEvent {
  @override
  List<Object?> get props => [];
}
