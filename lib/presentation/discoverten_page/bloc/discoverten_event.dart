// ignore_for_file: must_be_immutable

part of 'discoverten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Discoverten widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DiscovertenEvent extends Equatable {}

/// Event that is dispatched when the Discoverten widget is first created.
class DiscovertenInitialEvent extends DiscovertenEvent {
  @override
  List<Object?> get props => [];
}
