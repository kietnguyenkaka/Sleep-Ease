import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/suggestthree_screen/models/suggestthree_model.dart';
part 'suggestthree_event.dart';
part 'suggestthree_state.dart';

/// A bloc that manages the state of a Suggestthree according to the event that is dispatched to it.
class SuggestthreeBloc extends Bloc<SuggestthreeEvent, SuggestthreeState> {
  SuggestthreeBloc(SuggestthreeState initialState) : super(initialState) {
    on<SuggestthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuggestthreeInitialEvent event,
    Emitter<SuggestthreeState> emit,
  ) async {
    emit(state.copyWith(
      textFieldController: TextEditingController(),
    ));
  }
}
