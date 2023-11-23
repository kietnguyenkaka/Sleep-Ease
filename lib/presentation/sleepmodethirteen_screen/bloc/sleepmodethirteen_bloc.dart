import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/sleepmodethirteen_screen/models/sleepmodethirteen_model.dart';
part 'sleepmodethirteen_event.dart';
part 'sleepmodethirteen_state.dart';

/// A bloc that manages the state of a Sleepmodethirteen according to the event that is dispatched to it.
class SleepmodethirteenBloc
    extends Bloc<SleepmodethirteenEvent, SleepmodethirteenState> {
  SleepmodethirteenBloc(SleepmodethirteenState initialState)
      : super(initialState) {
    on<SleepmodethirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepmodethirteenInitialEvent event,
    Emitter<SleepmodethirteenState> emit,
  ) async {}
}
