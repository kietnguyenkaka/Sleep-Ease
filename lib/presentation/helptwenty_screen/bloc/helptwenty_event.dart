// ignore_for_file: must_be_immutable

part of 'helptwenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Helptwenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelptwentyEvent extends Equatable {}

/// Event that is dispatched when the Helptwenty widget is first created.
class HelptwentyInitialEvent extends HelptwentyEvent {
  @override
  List<Object?> get props => [];
}
