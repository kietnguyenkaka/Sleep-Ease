// ignore_for_file: must_be_immutable

part of 'profilesixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Profilesixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfilesixteenEvent extends Equatable {}

/// Event that is dispatched when the Profilesixteen widget is first created.
class ProfilesixteenInitialEvent extends ProfilesixteenEvent {
  @override
  List<Object?> get props => [];
}
