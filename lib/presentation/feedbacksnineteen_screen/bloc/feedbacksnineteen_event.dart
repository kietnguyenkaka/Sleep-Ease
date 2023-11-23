// ignore_for_file: must_be_immutable

part of 'feedbacksnineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Feedbacksnineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedbacksnineteenEvent extends Equatable {}

/// Event that is dispatched when the Feedbacksnineteen widget is first created.
class FeedbacksnineteenInitialEvent extends FeedbacksnineteenEvent {
  @override
  List<Object?> get props => [];
}
