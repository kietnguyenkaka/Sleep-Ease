// ignore_for_file: must_be_immutable

part of 'feedbacksnineteen_bloc.dart';

/// Represents the state of Feedbacksnineteen in the application.
class FeedbacksnineteenState extends Equatable {
  FeedbacksnineteenState({this.feedbacksnineteenModelObj});

  FeedbacksnineteenModel? feedbacksnineteenModelObj;

  @override
  List<Object?> get props => [
        feedbacksnineteenModelObj,
      ];
  FeedbacksnineteenState copyWith(
      {FeedbacksnineteenModel? feedbacksnineteenModelObj}) {
    return FeedbacksnineteenState(
      feedbacksnineteenModelObj:
          feedbacksnineteenModelObj ?? this.feedbacksnineteenModelObj,
    );
  }
}
