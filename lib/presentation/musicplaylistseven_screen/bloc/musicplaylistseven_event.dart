// ignore_for_file: must_be_immutable

part of 'musicplaylistseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Musicplaylistseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicplaylistsevenEvent extends Equatable {}

/// Event that is dispatched when the Musicplaylistseven widget is first created.
class MusicplaylistsevenInitialEvent extends MusicplaylistsevenEvent {
  @override
  List<Object?> get props => [];
}
