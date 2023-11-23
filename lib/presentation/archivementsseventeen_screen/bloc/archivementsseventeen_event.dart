// ignore_for_file: must_be_immutable

part of 'archivementsseventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Archivementsseventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArchivementsseventeenEvent extends Equatable {}

/// Event that is dispatched when the Archivementsseventeen widget is first created.
class ArchivementsseventeenInitialEvent extends ArchivementsseventeenEvent {
  @override
  List<Object?> get props => [];
}
