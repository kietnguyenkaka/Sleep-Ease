// ignore_for_file: must_be_immutable

part of 'musicsix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Musicsix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicsixEvent extends Equatable {}

/// Event that is dispatched when the Musicsix widget is first created.
class MusicsixInitialEvent extends MusicsixEvent {
  @override
  List<Object?> get props => [];
}
