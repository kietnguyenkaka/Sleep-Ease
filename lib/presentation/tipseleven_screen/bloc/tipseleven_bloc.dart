import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/tipseleven_screen/models/tipseleven_model.dart';
part 'tipseleven_event.dart';
part 'tipseleven_state.dart';

/// A bloc that manages the state of a Tipseleven according to the event that is dispatched to it.
class TipselevenBloc extends Bloc<TipselevenEvent, TipselevenState> {
  TipselevenBloc(TipselevenState initialState) : super(initialState) {
    on<TipselevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TipselevenInitialEvent event,
    Emitter<TipselevenState> emit,
  ) async {}
}
