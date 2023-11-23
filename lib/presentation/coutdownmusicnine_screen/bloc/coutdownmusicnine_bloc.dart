import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/coutdownmusicnine_screen/models/coutdownmusicnine_model.dart';
part 'coutdownmusicnine_event.dart';
part 'coutdownmusicnine_state.dart';

/// A bloc that manages the state of a Coutdownmusicnine according to the event that is dispatched to it.
class CoutdownmusicnineBloc
    extends Bloc<CoutdownmusicnineEvent, CoutdownmusicnineState> {
  CoutdownmusicnineBloc(CoutdownmusicnineState initialState)
      : super(initialState) {
    on<CoutdownmusicnineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CoutdownmusicnineInitialEvent event,
    Emitter<CoutdownmusicnineState> emit,
  ) async {}
}
