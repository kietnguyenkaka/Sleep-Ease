import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/feedbacksnineteen_screen/models/feedbacksnineteen_model.dart';
part 'feedbacksnineteen_event.dart';
part 'feedbacksnineteen_state.dart';

/// A bloc that manages the state of a Feedbacksnineteen according to the event that is dispatched to it.
class FeedbacksnineteenBloc
    extends Bloc<FeedbacksnineteenEvent, FeedbacksnineteenState> {
  FeedbacksnineteenBloc(FeedbacksnineteenState initialState)
      : super(initialState) {
    on<FeedbacksnineteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedbacksnineteenInitialEvent event,
    Emitter<FeedbacksnineteenState> emit,
  ) async {}
}
