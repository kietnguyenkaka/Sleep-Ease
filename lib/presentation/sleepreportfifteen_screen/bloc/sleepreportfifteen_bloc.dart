import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/sleepreportfifteen_screen/models/sleepreportfifteen_model.dart';
part 'sleepreportfifteen_event.dart';
part 'sleepreportfifteen_state.dart';

/// A bloc that manages the state of a Sleepreportfifteen according to the event that is dispatched to it.
class SleepreportfifteenBloc
    extends Bloc<SleepreportfifteenEvent, SleepreportfifteenState> {
  SleepreportfifteenBloc(SleepreportfifteenState initialState)
      : super(initialState) {
    on<SleepreportfifteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepreportfifteenInitialEvent event,
    Emitter<SleepreportfifteenState> emit,
  ) async {}
}
