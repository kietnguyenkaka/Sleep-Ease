// ignore_for_file: must_be_immutable

part of 'enterthetipstwelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Enterthetipstwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EnterthetipstwelveEvent extends Equatable {}

/// Event that is dispatched when the Enterthetipstwelve widget is first created.
class EnterthetipstwelveInitialEvent extends EnterthetipstwelveEvent {
  @override
  List<Object?> get props => [];
}
