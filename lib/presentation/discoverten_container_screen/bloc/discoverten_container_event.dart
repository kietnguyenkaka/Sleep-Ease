// ignore_for_file: must_be_immutable

part of 'discoverten_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DiscovertenContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DiscovertenContainerEvent extends Equatable {}

/// Event that is dispatched when the DiscovertenContainer widget is first created.
class DiscovertenContainerInitialEvent extends DiscovertenContainerEvent {
  @override
  List<Object?> get props => [];
}
