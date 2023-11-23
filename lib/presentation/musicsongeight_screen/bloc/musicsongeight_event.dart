// ignore_for_file: must_be_immutable

part of 'musicsongeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Musicsongeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicsongeightEvent extends Equatable {}

/// Event that is dispatched when the Musicsongeight widget is first created.
class MusicsongeightInitialEvent extends MusicsongeightEvent {
  @override
  List<Object?> get props => [];
}
