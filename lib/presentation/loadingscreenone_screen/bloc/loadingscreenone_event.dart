// ignore_for_file: must_be_immutable

part of 'loadingscreenone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Loadingscreenone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoadingscreenoneEvent extends Equatable {}

/// Event that is dispatched when the Loadingscreenone widget is first created.
class LoadingscreenoneInitialEvent extends LoadingscreenoneEvent {
  @override
  List<Object?> get props => [];
}
