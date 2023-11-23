import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/helptwenty_screen/models/helptwenty_model.dart';
part 'helptwenty_event.dart';
part 'helptwenty_state.dart';

/// A bloc that manages the state of a Helptwenty according to the event that is dispatched to it.
class HelptwentyBloc extends Bloc<HelptwentyEvent, HelptwentyState> {
  HelptwentyBloc(HelptwentyState initialState) : super(initialState) {
    on<HelptwentyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HelptwentyInitialEvent event,
    Emitter<HelptwentyState> emit,
  ) async {}
}
