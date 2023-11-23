import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/suggestfourteen_screen/models/suggestfourteen_model.dart';
part 'suggestfourteen_event.dart';
part 'suggestfourteen_state.dart';

/// A bloc that manages the state of a Suggestfourteen according to the event that is dispatched to it.
class SuggestfourteenBloc
    extends Bloc<SuggestfourteenEvent, SuggestfourteenState> {
  SuggestfourteenBloc(SuggestfourteenState initialState) : super(initialState) {
    on<SuggestfourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuggestfourteenInitialEvent event,
    Emitter<SuggestfourteenState> emit,
  ) async {
    emit(state.copyWith(editTextController: TextEditingController()));
  }
}
